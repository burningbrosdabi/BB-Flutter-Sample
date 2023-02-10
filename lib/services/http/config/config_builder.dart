// ignore_for_file: deprecated_member_use_from_same_package

import 'dart:async';
import 'dart:convert';

import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'credential_generator.dart';

abstract class HttpCofigBuilder {
  abstract final String baseUrl;

  int milliseconds_timeout = 10000;

  Map<String, dynamic>? getQueryParameters() {
    return null;
  }

  FutureOr<Map<String, dynamic>>? getAuthorizationMap() {
    return null;
  }

  Map<String, dynamic> parseResponse(dynamic response) {
    if (response is String) {
      return safe<Map<String, dynamic>>(
        () => json.decode(response),
        fallback: {},
      )!;
    }
    return Map<String, dynamic>.from(response);
  }
}

class BaseHttpConfigBuilder extends HttpCofigBuilder {
  final Ref ref;

  BaseHttpConfigBuilder({
    required this.ref,
  });

  @override
  String get baseUrl => 'https://hulk.dabi-api.com/api/';

  @override
  Map<String, dynamic> getAuthorizationMap() {
  
  }
}

class GraphConfigBuilder extends HttpCofigBuilder {
  final String access_token;
  String version;

  @override
  // ignore: overridden_fields
  int milliseconds_timeout = 120000;

  GraphConfigBuilder(this.access_token, {this.version = 'v14.0'});

  @override
  String get baseUrl => 'https://graph.facebook.com/$version/';

  @override
  Map<String, dynamic>? getQueryParameters() {
    return {'access_token': access_token};
  }

  @override
  Map<String, dynamic> parseResponse(dynamic response) {
    if (response is! String) return response;
    return json.decode(response);
  }
}

class TimestampConfigBuilder extends HttpCofigBuilder {
  final credential_generator = BaseCredentialGenerator();

  @override
  String get baseUrl => 'https://api.dabi-api.com/api/';

  @override
  Map<String, dynamic> getAuthorizationMap() {
 
  }
}

class SlackConfigBuilder extends HttpCofigBuilder {
  @override
  String get baseUrl => 'https://slack.com/api/';
}
