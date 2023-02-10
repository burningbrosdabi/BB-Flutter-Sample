// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Credential _$$_CredentialFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_Credential',
      json,
      ($checkedConvert) {
        final val = _$_Credential(
          access_token: $checkedConvert('access_token', (v) => v as String),
          refresh_token: $checkedConvert('refresh_token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CredentialToJson(_$_Credential instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
