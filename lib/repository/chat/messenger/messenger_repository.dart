import 'dart:convert';

import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/repository/chat/messenger/pristine_messnger_repository.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:path/path.dart';

part 'fb_messenger_repository.dart';
part 'ig_messenger_repository.dart';

abstract class MessengerRepository extends IRepository {
  final String conversation_id;
  abstract final PristineMessengerRepository _pris_mess_repo;
  abstract final String outside_window_tag;
  final ChatLogRepository _log_repository;
  static String app_id = '469651344665121';

  MessengerRepository({
    required super.ref,
    required this.conversation_id,
    required super.http,
    @visibleForTesting Logging? log,
  })  : _log_repository = ChatLogRepository(ref: ref),
        super(
          log: log ?? Logging('MessengerRepository'),
        );

  Stream<Messenger> streaming();

  Future<Messenger> fetchPaginate(String next) async {
    try {
      log.info(subTag: 'fetchPaginate');
      final response = await http.get(next);
      log.info(subTag: 'fetchPaginate success');
      return Messenger.fromJson(response);
    } catch (e) {
      log.error(subTag: 'fetchPaginate failed', message: e.toString());
      rethrow;
    }
  }

  Future<Messenger?> sync() async {
    final response = await _pris_mess_repo.sync();
    if (response == null) return null;
    return Messenger.fromJson(response);
  }

  Future<DeliveredResponse> sendTextMessage({
    required String recipient_id,
    required String text,
    // required AcquisitionSource source,
  }) async {
    final payload = {
      "recipient": {
        "id": recipient_id,
      },
      "message": {
        "text": text,
      },
    };
    final response = await http.post('me/messages', data: payload);
    final delivered_response = DeliveredResponse.fromJson(response);
    _log_repository.deliveredLog(
      conversation_id: conversation_id,
      payload: payload,
      message_id: delivered_response.message_id,
    );
    return delivered_response;
  }

  Future<DeliveredResponse> sendAttachmentMessage({
    required String recipient_id,
    required AssetType type,
    required String url,
    // required String conversation_id,
  }) async {
    final data = {
      "messaging_type": "RESPONSE",
      "recipient": {"id": recipient_id},
      "message": {
        "attachment": {
          "type": type == AssetType.video ? 'video' : 'image',
          "payload": {"url": url}
        }
      },
    };

    final response = await http.post('me/messages', data: data);
    final delivered_response = DeliveredResponse.fromJson(response);

    _log_repository.deliveredLog(
      conversation_id: conversation_id,
      payload: data,
      message_id: delivered_response.message_id,
    );
    return delivered_response;
  }

  Future<void> clearCache() {
    try {
      log.info(subTag: 'clearCache');
      return _pris_mess_repo.deleteAt(conversation_id);
    } catch (e) {
      return Future.value();
    } finally {
      log.info(subTag: 'clearCache done');
    }
  }

  Future<void> updateSenderAction({
    required String recipient,
    required String page_id,
    required SenderAction action,
  });

  Future<DeliveredResponse> uploadAttachment({
    required AssetEntity asset,
  });

  Future<Message> getMessage(String id) async {
    final response = await http.get(id, queryParameters: {
      'fields': 'message,story,created_time,from,'
          'shares{link,id,name,description,template},'
          'attachments{id,video_data,image_data,name,size,mime_type}',
    });
    return Conversation.fromJson(response).toMessage();
  }

  Future<void> checkOwnership() {
    return Future.value();
  }

  Future<OwnershipStatus> takeOwnership();
}
