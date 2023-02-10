// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          pk: $checkedConvert('pk', (v) => v as int),
          email: $checkedConvert('email', (v) => v as String),
          first_name: $checkedConvert('first_name', (v) => v as String? ?? ''),
          last_name: $checkedConvert('last_name', (v) => v as String? ?? ''),
          is_verified:
              $checkedConvert('is_verified', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'pk': instance.pk,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'is_verified': instance.is_verified,
    };
