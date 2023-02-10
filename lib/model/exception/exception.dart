import 'dart:io';

import 'package:dabi_chat/services/http/error.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

part 'exception.g.dart';

enum ExceptionType {
  unknown,
  server,
  connection,
  deserialize,
  outside_allowed_window,
  unowned_thread,
  s3UploadFailed,
  s3Timeout,
  loginCancelled,
  user_inactivate,
  invalid_phone
}

@freezed
class $Exception with _$$Exception {
  // ignore: unused_element

  const factory $Exception.unknown({
    @JsonKey(ignore: true) required Object error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = _UnknownException;

  const factory $Exception.server({
    @JsonKey(ignore: true) required DioError error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = _ServerException;

  const factory $Exception.user_inactivate({
    @JsonKey(ignore: true) required DioError error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = _UserInactiveException;

  const factory $Exception.invalid_phone({
    @JsonKey(ignore: true) required DioError error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = _InvalidPhoneException;

  const factory $Exception.connection({
    @JsonKey(ignore: true) required DioError error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = _ConnectionException;

  const factory $Exception.deserialize({
    @JsonKey(ignore: true) required CheckedFromJsonException error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = _DerializeException;

  const factory $Exception.outside_allowed_window({
    @JsonKey(ignore: true) required Map<String, dynamic> response,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = OutsideAllowedWindowException;

  const factory $Exception.unowned_thread({
    @JsonKey(ignore: true) required Map<String, dynamic> response,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = UnownedThreadException;

  const factory $Exception.s3UploadFailed({
    @JsonKey(ignore: true) Object? error,
    @JsonKey(ignore: true) StackTrace? trace,
  }) = S3UploadFailed;

  const factory $Exception.s3Timeout() = S3TimeoutException;

  factory $Exception.parse({
    required Object error,
    StackTrace? trace,
  }) {
    if (error is $Exception) return error;
    if (error is DioError) {
      if ({
            DioErrorType.connectTimeout,
            DioErrorType.sendTimeout,
            DioErrorType.receiveTimeout
          }.contains(error.type) ||
          error.error is SocketException) {
        return $Exception.connection(error: error, trace: trace);
      } else if (error is DioErrorWrapper) {
        switch (error.responseErrorType) {
          case ResponseErrorType.user_inactivate:
            return $Exception.user_inactivate(error: error);
          case ResponseErrorType.invalid_submited_number:
            return $Exception.invalid_phone(error: error);
          default:
            break;
        }
      }
      return $Exception.server(error: error, trace: trace);
    }
    if (error is CheckedFromJsonException) {
      return $Exception.deserialize(error: error, trace: trace);
    }

    return $Exception.unknown(error: error, trace: trace);
  }

  const factory $Exception.loginCancelled() = _LoginCanclledException;

  const $Exception._();

  MeaningfulException get meaning {
    return when<MeaningfulException>(
        unknown: (_, __) => const MeaningfulException(
              title: 'U là trời!',
              description: 'Đã có lỗi kỳ cục xảy ra.',
              error_type: ExceptionType.unknown,
            ),
        server: (_, __) => const MeaningfulException(
              title: 'Hệ thống đã xảy ra lỗi!',
              description: 'Bạn vui lòng thử lại sau',
              error_type: ExceptionType.server,
            ),
        deserialize: (_, __) => const MeaningfulException(
              title: 'parsed data failed',
              error_type: ExceptionType.deserialize,
            ),
        connection: (DioError error, StackTrace? trace) =>
            const MeaningfulException(
              title: 'Đường truyền không ổn định',
              description:
                  'Bạn kiểm tra lại tín hiệu mạng và thử lại lần nữa nhé ❤️',
              error_type: ExceptionType.connection,
            ),
        loginCancelled: () => const MeaningfulException(
              title: 'Đăng nhập thất bại',
              description: 'Bạn đã hủy đăng nhập',
              error_type: ExceptionType.loginCancelled,
            ),
        outside_allowed_window:
            (Map<String, dynamic> response, StackTrace? trace) =>
                const MeaningfulException(
                  title: 'Không thể gửi tin nhắn sau 24h',
                  description:
                      'Bạn vui lòng liên hệ với admin để nhận được sự hỗ trợ',
                  error_type: ExceptionType.outside_allowed_window,
                ),
        s3UploadFailed: (_, __) => const MeaningfulException(
              title: 'Lỗi up ảnh',
              description:
                  'Bạn vui lòng chọn ảnh khác hoặc liên hệ với admin để nhận được sự hỗ trợ',
              error_type: ExceptionType.s3UploadFailed,
            ),
        s3Timeout: () => const MeaningfulException(
              title: 'Kích thước hình ảnh lớn',
              description:
                  'Bạn vui lòng chọn ảnh khác hoặc liên hệ với admin để nhận được sự hỗ trợ',
              error_type: ExceptionType.s3Timeout,
            ),
        unowned_thread: (Map<String, dynamic> response, StackTrace? trace) =>
            const MeaningfulException(
              title: 'Cuộc hội thoại đã được xử lý trên Bussiness Suite',
              description:
                  'Bạn vui lòng liên hệ với admin để nhận được sự hỗ trợ',
              error_type: ExceptionType.unowned_thread,
            ),
        user_inactivate: (DioError error, StackTrace? trace) =>
            const MeaningfulException(
              title: 'Không thể đăng nhập',
              description: 'Tài khoản của bạn đã bị xóa',
              error_type: ExceptionType.user_inactivate,
            ),
        invalid_phone: (DioError error, StackTrace? trace) =>
            const MeaningfulException(
              error_type: ExceptionType.invalid_phone,
              title: 'Số điện thoại không hợp lệ',
              description:
                  'Sô điện thoại bắt đầu bằng 0 hoặc +84 và có độ dài trên 10 ký tự',
            ));
  }
}

@freezed
class MeaningfulException with _$MeaningfulException {
  const factory MeaningfulException({
    required ExceptionType error_type,
    required String title,
    final String? description,
  }) = _MeaningfulException;

  factory MeaningfulException.fromJson(Map<String, dynamic> json) =>
      _$MeaningfulExceptionFromJson(json);
}
