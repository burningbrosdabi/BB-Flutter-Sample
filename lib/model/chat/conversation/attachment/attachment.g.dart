// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageAttachment _$$ImageAttachmentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ImageAttachment',
      json,
      ($checkedConvert) {
        final val = _$ImageAttachment(
          size: $checkedConvert('size', (v) => v as int? ?? 0),
          data: $checkedConvert('data',
              (v) => AttachmentData.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$ImageAttachmentToJson(_$ImageAttachment instance) =>
    <String, dynamic>{
      'size': instance.size,
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$VideoAttachment _$$VideoAttachmentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VideoAttachment',
      json,
      ($checkedConvert) {
        final val = _$VideoAttachment(
          data: $checkedConvert('data',
              (v) => AttachmentData.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$VideoAttachmentToJson(_$VideoAttachment instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'type': instance.$type,
    };

_$_AttachmentData _$$_AttachmentDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_AttachmentData',
      json,
      ($checkedConvert) {
        final val = _$_AttachmentData(
          width: $checkedConvert('width', (v) => v as int?),
          height: $checkedConvert('height', (v) => v as int?),
          url: $checkedConvert('url', (v) => v as String),
          preview_url: $checkedConvert('preview_url', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_AttachmentDataToJson(_$_AttachmentData instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'preview_url': instance.preview_url,
    };
