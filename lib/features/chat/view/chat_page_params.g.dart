// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_page_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatPageParams _$$_ChatPageParamsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ChatPageParams',
      json,
      ($checkedConvert) {
        final val = _$_ChatPageParams(
          id: $checkedConvert('id', (v) => v as String),
          setting_id: $checkedConvert('setting_id', (v) => v as String),
          source: $checkedConvert(
              'source', (v) => $enumDecode(_$AcquisitionSourceEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ChatPageParamsToJson(_$_ChatPageParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'setting_id': instance.setting_id,
      'source': _$AcquisitionSourceEnumMap[instance.source]!,
    };

const _$AcquisitionSourceEnumMap = {
  AcquisitionSource.INSTAGRAM: 'INSTAGRAM',
  AcquisitionSource.FACEBOOK: 'FACEBOOK',
};
