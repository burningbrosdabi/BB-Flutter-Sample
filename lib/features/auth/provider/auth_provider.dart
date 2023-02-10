import 'package:dabi_chat/features/staff/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/auth/auth.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/messenger/messenger_observer_provider.dart';
import 'package:dabi_chat/services/navigation/provider/provider.dart';
import 'package:dabi_chat/services/navigation/routes/routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthProvider {
  final Ref ref;
  final CredentialRepository credential_repo;
  final UserRepository user_repo;
  late VoidCallback unsub;
  final FacebookAuth _fb_auth;
  final Logging log;

  AuthProvider({
    required this.ref,
    @visibleForTesting FacebookAuth? fb_auth,
    @visibleForTesting CredentialRepository? credential_repo,
    @visibleForTesting UserRepository? user_repo,
    @visibleForTesting Logging? log,
  })  : _fb_auth = fb_auth ?? FacebookAuth.instance,
        credential_repo = credential_repo ?? CredentialRepository(ref: ref),
        user_repo = user_repo ?? UserRepository(ref: ref),
        log = log ?? Logging('AuthProvider') {
    // invoke for register listener
    ref.read(messenger_observer_provider);
  }

  Future<String> getFbToken() async {}

  Future<String> getAppleToken() async {}

  Future<void> login(AuthMethod method) async {}

  Future<void> logout({int replace = 0}) async {}

  Future<void> checkCachedAuthData() async {}

  Future<void> _refreshToken() async {}

  Future<void> deleteAccount() async {}
}

final authProvider = Provider<AuthProvider>((ref) => AuthProvider(ref: ref));

final user_provider = StateProvider<User?>((ref) => null);
final credentialProvider = StateProvider<Credential?>((ref) => null);
