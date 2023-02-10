// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payload _$$_PayloadFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Payload',
      json,
      ($checkedConvert) {
        final val = _$_Payload(
          url: $checkedConvert('url', (v) => v as String),
          sticker_id: $checkedConvert('sticker_id', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sticker_id': instance.sticker_id,
    };

_$_ImageRemoteMessageAttachment _$$_ImageRemoteMessageAttachmentFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ImageRemoteMessageAttachment',
      json,
      ($checkedConvert) {
        final val = _$_ImageRemoteMessageAttachment(
          payload: $checkedConvert(
              'payload', (v) => Payload.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$_ImageRemoteMessageAttachmentToJson(
        _$_ImageRemoteMessageAttachment instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'type': instance.$type,
    };

_$_VideoRemoteMessageAttachment _$$_VideoRemoteMessageAttachmentFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_VideoRemoteMessageAttachment',
      json,
      ($checkedConvert) {
        final val = _$_VideoRemoteMessageAttachment(
          url: $checkedConvert(
              'payload',
              (v) => RemoteMessageAttachment.parsePayload(
                  v as Map<String, dynamic>)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'url': 'payload', r'$type': 'type'},
    );

Map<String, dynamic> _$$_VideoRemoteMessageAttachmentToJson(
        _$_VideoRemoteMessageAttachment instance) =>
    <String, dynamic>{
      'payload': instance.url,
      'type': instance.$type,
    };

_$_StoryMentionRemoteMessageAttachment
    _$$_StoryMentionRemoteMessageAttachmentFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_StoryMentionRemoteMessageAttachment',
          json,
          ($checkedConvert) {
            final val = _$_StoryMentionRemoteMessageAttachment(
              url: $checkedConvert(
                  'payload',
                  (v) => RemoteMessageAttachment.parsePayload(
                      v as Map<String, dynamic>)),
              $type: $checkedConvert('type', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {'url': 'payload', r'$type': 'type'},
        );

Map<String, dynamic> _$$_StoryMentionRemoteMessageAttachmentToJson(
        _$_StoryMentionRemoteMessageAttachment instance) =>
    <String, dynamic>{
      'payload': instance.url,
      'type': instance.$type,
    };
