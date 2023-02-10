import 'dart:io';

import 'package:dabi_chat/data/auth/auth.dart';
import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/auth/auth.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/messaging/messaging.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class UserRepository extends IRepository
    with DataSourceMixin<Map<String, dynamic>, User> {
  UserRepository({required Ref ref, @visibleForTesting Logging? log})
      : data_source = UserData(ref),
        super(ref: ref, log: log ?? Logging('UserRepository'));

  @override
  DataSource<User> data_source;

  Future<User> getUser() async {
    try {
      log.info(subTag: 'getUser');
      final response = await http.get('/me');
      final user = User.fromJson(response);
      await save(user);
      log.info(subTag: 'getUser sucess', message: 'id:${user.pk}');
      return user;
    } catch (e) {
      log.error(subTag: 'getUser', message: '$e');
      rethrow;
    }
  }

  Future<String?> _getDeviceId() async {
    log.info(subTag: '_getDeviceId');
    final deviceInfo = DeviceInfoPlugin();
    String? id;
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;
      log.info(
          subTag: '_getDeviceId', message: 'info: ${iosDeviceInfo.toMap()}');
      id = iosDeviceInfo.identifierForVendor;
    } else {
      final androidDeviceInfo = await deviceInfo.androidInfo;
      log.info(
          subTag: '_getDeviceId',
          message: 'info: ${androidDeviceInfo.toMap()}');
      id = androidDeviceInfo.id;
    }
    log.info(subTag: '_getDeviceId success', message: '$id');
    return id;
  }

  void uploadDeviceData() async {
    log.info(subTag: 'uploadDeviceData');
    final deviceId = await _getDeviceId();
    final token = await ref.read(messagingProvider).getToken();
    if (deviceId == null) {
      log.info(
          subTag: 'uploadDeviceData', message: 'exit due to empty deviceId');
      return;
    }
    http.post('devices/', data: {
      'device_id': deviceId,
      'device_push_token': token,
    });
  }

  Future<void> deleteAccount() async {
    await http.delete('/me/delete/');
  }

  Future<void> redeem(String code) async {
    await http.post('/me/verify/', data: {'redeem_code': code});
  }
}
