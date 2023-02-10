import 'package:dabi_chat/services/http/extension.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:dio/dio.dart';

enum ResponseErrorType {
  unknown,
  user_inactivate,
  invalid_submited_number,
}

class DioErrorWrapper extends DioError {
  ResponseErrorType responseErrorType = ResponseErrorType.unknown;

  DioErrorWrapper(DioError error)
      : super(
          requestOptions: error.requestOptions,
          response: error.response,
          type: error.type,
          error: error.error,
        ) {
    final error_description =
        pick(response?.data, 'error_description').asStringOrNull();
    if (error_description != null &&
        error_description.contains('User inactive or deleted.')) {
      responseErrorType = ResponseErrorType.user_inactivate;
    }
    if (pick(response?.data).asMapOrEmpty().containsKey('phone_number')) {
      responseErrorType = ResponseErrorType.invalid_submited_number;
    }
  }

  @override
  String toString() {
    final response_string = (response?.data).toString();
    const max_length = 300;
    final ellipsis_response = response_string.length > max_length
        ? response_string.substring(0, max_length) + '...'
        : response_string;
    return [
      requestOptions.toCurlCmd(),
      if (response?.data != null) 'response: $ellipsis_response',
      super.toString(),
    ].join('\n');
  }
}
