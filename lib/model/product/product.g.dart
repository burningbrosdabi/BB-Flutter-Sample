// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Product',
      json,
      ($checkedConvert) {
        final val = _$_Product(
          id: $checkedConvert('id', (v) => v as int),
          photo: $checkedConvert('photo', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
          price: $checkedConvert('price', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'text': instance.text,
      'price': instance.price,
      'title': instance.title,
    };
