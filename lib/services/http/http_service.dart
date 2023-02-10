import 'dart:io' hide Platform;

import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/http/error.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:nanoid/nanoid.dart';
import 'config/config.dart';

import 'extension.dart';

class Http with ResponseExtractor {
  final log = Logging('HTTP');
  static const x_request_id = 'X-Request-ID';
  @override
  late Dio dio;

  final _whiteListPattern =
      RegExp(r"((user/facebook)|(user/apple/sign-in)|(oauth/token))");

  HttpCofigBuilder configBuilder;

  Http({
    required this.configBuilder,
  }) {
    final baseUrl = configBuilder.baseUrl;
    final queryParams = configBuilder.getQueryParameters();
    dio = Dio(BaseOptions(
      connectTimeout: configBuilder.milliseconds_timeout,
      receiveTimeout: configBuilder.milliseconds_timeout,
      baseUrl: baseUrl,
      queryParameters: queryParams,
    ));

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
}
