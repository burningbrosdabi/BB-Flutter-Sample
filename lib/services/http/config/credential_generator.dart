import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/foundation.dart';

abstract class CredentialGenerator {
  abstract String baseSignKey;

  String? storedSignKey;

  DateTime _lastSignedTime = DateTime.now();

  @protected
  bool isValidSignKey() {
    if (storedSignKey == null) return false;
    return DateTime.now().difference(_lastSignedTime) <
        const Duration(minutes: 5);
  }

  @protected
  String genSignKey() {}

  Map<String, dynamic> getAuthorizationMap() {}
}

class BaseCredentialGenerator extends CredentialGenerator {
  BaseCredentialGenerator();

  @override
  Map<String, dynamic> getAuthorizationMap() {
    final header = super.getAuthorizationMap();

    if (!isValidSignKey()) {
      storedSignKey = genSignKey();
    }
    return header;
  }
}
