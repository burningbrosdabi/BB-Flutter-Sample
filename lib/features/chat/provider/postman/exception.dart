import 'dart:convert';

import 'package:dabi_chat/model/model.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:dio/dio.dart';

class PostmanException {
  final outside_of_allowed_window_fb = 2018278;
  final outside_of_allowed_window_ig = 2534022;
  final unowned_thread = 2534037;

  $Exception handle(Object error) {
    if (error is! DioError) return $Exception.parse(error: error);
    if (error.response == null) return $Exception.parse(error: error);
    final response_data = json.decode(error.response!.data);
    final subcode = pick(response_data, 'error', 'error_subcode').asIntOrNull();
    if ([
      outside_of_allowed_window_fb,
      outside_of_allowed_window_ig,
    ].contains(subcode)) {
      return $Exception.outside_allowed_window(response: response_data);
    } else if (unowned_thread == subcode) {
      return $Exception.unowned_thread(response: response_data);
    }
    return $Exception.server(error: error);
  }
}
