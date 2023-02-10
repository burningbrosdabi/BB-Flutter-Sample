// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feed _$$_FeedFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Feed',
      json,
      ($checkedConvert) {
        final val = _$_Feed(
          id: $checkedConvert('id', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String? ?? ''),
          created_time: $checkedConvert('created_time', (v) => parseDate(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FeedToJson(_$_Feed instance) => <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'created_time': instance.created_time?.toIso8601String(),
    };
