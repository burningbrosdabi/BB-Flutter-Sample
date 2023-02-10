// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'from.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_From _$$_FromFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_From',
      json,
      ($checkedConvert) {
        final val = _$_From(
          id: $checkedConvert('id', (v) => v as String),
          profile_pic: $checkedConvert('profile_pic', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FromToJson(_$_From instance) => <String, dynamic>{
      'id': instance.id,
      'profile_pic': instance.profile_pic,
    };
