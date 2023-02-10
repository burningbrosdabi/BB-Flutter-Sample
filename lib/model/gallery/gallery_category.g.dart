// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GalleryCategory _$$_GalleryCategoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_GalleryCategory',
      json,
      ($checkedConvert) {
        final val = _$_GalleryCategory(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GalleryCategoryToJson(_$_GalleryCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
