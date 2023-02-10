// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuickReply _$$_QuickReplyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_QuickReply',
      json,
      ($checkedConvert) {
        final val = _$_QuickReply(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
          modified: $checkedConvert(
              'modified',
              (v) => v == null
                  ? 0
                  : const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_QuickReplyToJson(_$_QuickReply instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'modified': const TimestampConverter().toJson(instance.modified),
    };
