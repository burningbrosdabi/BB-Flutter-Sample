import 'package:dabi_chat/data/auth/credential_data.dart';
import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';

class CredentialRepository extends IRepository
    with DataSourceMixin<Map<String, dynamic>, Credential> {
  CredentialRepository({
    required Ref ref,
    @visibleForTesting CredentialData? credentialData,
    @visibleForTesting Future<LoginResult> Function()? login,
    @visibleForTesting Logging? log,
  })  : data_source = credentialData ?? CredentialData(ref),
        super(
          ref: ref,
          log: log ?? Logging('CredentialRepository'),
        ) {
    login = login ?? FacebookAuth.instance.login;
  }

  late final Future<LoginResult> login;

  @override
  DataSource<Credential> data_source;

  Future<Credential> getAccessToken(String token, AuthMethod method) async {}

  Future<Credential?> refreshToken() async {}
}
