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
              title: 'U l?? tr???i!',
              description: '???? c?? l???i k??? c???c x???y ra.',
              error_type: ExceptionType.unknown,
            ),
        server: (_, __) => const MeaningfulException(
              title: 'H??? th???ng ???? x???y ra l???i!',
              description: 'B???n vui l??ng th??? l???i sau',
              error_type: ExceptionType.server,
            ),
        deserialize: (_, __) => const MeaningfulException(
              title: 'parsed data failed',
              error_type: ExceptionType.deserialize,
            ),
        connection: (DioError error, StackTrace? trace) =>
            const MeaningfulException(
              title: '???????ng truy???n kh??ng ???n ?????nh',
              description:
                  'B???n ki???m tra l???i t??n hi???u m???ng v?? th??? l???i l???n n???a nh?? ??????',
              error_type: ExceptionType.connection,
            ),
        loginCancelled: () => const MeaningfulException(
              title: '????ng nh???p th???t b???i',
              description: 'B???n ???? h???y ????ng nh???p',
              error_type: ExceptionType.loginCancelled,
            ),
        outside_allowed_window:
            (Map<String, dynamic> response, StackTrace? trace) =>
                const MeaningfulException(
                  title: 'Kh??ng th??? g???i tin nh???n sau 24h',
                  description:
                      'B???n vui l??ng li??n h??? v???i admin ????? nh???n ???????c s??? h??? tr???',
                  error_type: ExceptionType.outside_allowed_window,
                ),
        s3UploadFailed: (_, __) => const MeaningfulException(
              title: 'L???i up ???nh',
              description:
                  'B???n vui l??ng ch???n ???nh kh??c ho???c li??n h??? v???i admin ????? nh???n ???????c s??? h??? tr???',
              error_type: ExceptionType.s3UploadFailed,
            ),
        s3Timeout: () => const MeaningfulException(
              title: 'K??ch th?????c h??nh ???nh l???n',
              description:
                  'B???n vui l??ng ch???n ???nh kh??c ho???c li??n h??? v???i admin ????? nh???n ???????c s??? h??? tr???',
              error_type: ExceptionType.s3Timeout,
            ),
        unowned_thread: (Map<String, dynamic> response, StackTrace? trace) =>
            const MeaningfulException(
              title: 'Cu???c h???i tho???i ???? ???????c x??? l?? tr??n Bussiness Suite',
              description:
                  'B???n vui l??ng li??n h??? v???i admin ????? nh???n ???????c s??? h??? tr???',
              error_type: ExceptionType.unowned_thread,
            ),
        user_inactivate: (DioError error, StackTrace? trace) =>
            const MeaningfulException(
              title: 'Kh??ng th??? ????ng nh???p',
              description: 'T??i kho???n c???a b???n ???? b??? x??a',
              error_type: ExceptionType.user_inactivate,
            ),
        invalid_phone: (DioError error, StackTrace? trace) =>
            const MeaningfulException(
              error_type: ExceptionType.invalid_phone,
              title: 'S??? ??i???n tho???i kh??ng h???p l???',
              description:
                  'S?? ??i???n tho???i b???t ?????u b???ng 0 ho???c +84 v?? c?? ????? d??i tr??n 10 k?? t???',
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
