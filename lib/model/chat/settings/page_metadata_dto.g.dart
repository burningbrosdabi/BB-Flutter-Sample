// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_metadata_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageMetadataDto _$$_PageMetadataDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PageMetadataDto',
      json,
      ($checkedConvert) {
        final val = _$_PageMetadataDto(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('app_name', (v) => v as String),
          page_id: $checkedConvert('page_id', (v) => v as int?),
          ig_page_id: $checkedConvert('ig_page_id', (v) => v as int?),
          messenger_token:
              $checkedConvert('messenger_token', (v) => v as String?),
          ig_messenger_token:
              $checkedConvert('ig_messenger_token', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'name': 'app_name'},
    );

Map<String, dynamic> _$$_PageMetadataDtoToJson(_$_PageMetadataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_name': instance.name,
      'page_id': instance.page_id,
      'ig_page_id': instance.ig_page_id,
      'messenger_token': instance.messenger_token,
      'ig_messenger_token': instance.ig_messenger_token,
    };
