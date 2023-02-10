// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Share _$$_ShareFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Share',
      json,
      ($checkedConvert) {
        final val = _$_Share(
          url: $checkedConvert('url', (v) => v as String),
          is_like_sticker:
              $checkedConvert('is_like_sticker', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ShareToJson(_$_Share instance) => <String, dynamic>{
      'url': instance.url,
      'is_like_sticker': instance.is_like_sticker,
    };
