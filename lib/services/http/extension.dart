import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

extension Curl on RequestOptions {
  String toCurlCmd() {
    String cmd = "curl";

    final header = headers
        .map((key, value) {
          if (key == "content-type" &&
              value.toString().contains("multipart/form-data")) {
            value = "multipart/form-data;";
          }
          return MapEntry(key, "-H '$key: $value'");
        })
        .values
        .join(" ");
    String url = "$baseUrl$path";
    if (queryParameters.isNotEmpty) {
      final query = queryParameters
          .map((key, value) {
            return MapEntry(key, "$key=$value");
          })
          .values
          .join("&");

      url += (url.contains("?")) ? query : "?$query";
    }
    if (method == "GET") {
      cmd += " $header '$url'";
    } else {
      final Map<String, dynamic> files = {};
      String postData = "-d ''";
      if (data != null) {
        if (data is FormData) {
          final fdata = data as FormData;
          for (final element in fdata.files) {
            final MultipartFile file = element.value;
            files[element.key] = "@${file.filename}";
          }
          for (final element in fdata.fields) {
            files[element.key] = element.value;
          }
          if (files.isNotEmpty) {
            postData = files
                .map((key, value) => MapEntry(key, "-F '$key=$value'"))
                .values
                .join(" ");
          }
        } else if (data is Map<String, dynamic>) {
          files.addAll(data);

          if (files.isNotEmpty) {
            postData = "-d '${json.encode(files).toString()}'";
          }
        } else if (data is List<dynamic>) {
          postData = "-d '${json.encode(data).toString()}'";
        }
      }

      final method = this.method.toString();
      cmd += " -X $method $postData $header '$url'";
    }

    return cmd;
  }
}

mixin ResponseExtractor {
  @protected
  abstract Dio dio;

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    // if (kIsWeb) {
    //   return _webGet(path, queryParameters);
    // } else {
    final res = await dio.get<Map<String, dynamic>>(path,
        queryParameters: queryParameters, options: options);
    return res.data!;
    // }
  }

  Future<T?> post<T>(String path,
      {dynamic data, Map<String, dynamic>? query, Options? options}) async {
    final res = await dio.post<T>(path,
        data: data, queryParameters: query, options: options);
    return res.data;
  }

  Future<T?> patch<T>(String path, {dynamic data}) async {
    final res = await dio.patch<T>(path, data: data);
    return res.data;
  }

  Future<void> put<T>(String path, {dynamic data}) =>
      dio.put<T>(path, data: data);

  Future<T?> delete<T>(String path, {dynamic data}) async {
    final res = await dio.delete<T>(path, data: data);
    return res.data;
  }

  Future<Response> head(String path) => dio.head(path);
}
