// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeaningfulException _$$_MeaningfulExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_MeaningfulException(
      error_type: $enumDecode(_$ExceptionTypeEnumMap, json['error_type']),
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_MeaningfulExceptionToJson(
        _$_MeaningfulException instance) =>
    <String, dynamic>{
      'error_type': _$ExceptionTypeEnumMap[instance.error_type]!,
      'title': instance.title,
      'description': instance.description,
    };

const _$ExceptionTypeEnumMap = {
  ExceptionType.unknown: 'unknown',
  ExceptionType.server: 'server',
  ExceptionType.connection: 'connection',
  ExceptionType.deserialize: 'deserialize',
  ExceptionType.outside_allowed_window: 'outside_allowed_window',
  ExceptionType.unowned_thread: 'unowned_thread',
  ExceptionType.s3UploadFailed: 's3UploadFailed',
  ExceptionType.s3Timeout: 's3Timeout',
  ExceptionType.loginCancelled: 'loginCancelled',
  ExceptionType.user_inactivate: 'user_inactivate',
  ExceptionType.invalid_phone: 'invalid_phone',
};
