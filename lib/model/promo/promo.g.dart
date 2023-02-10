// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Promo _$$_PromoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Promo',
      json,
      ($checkedConvert) {
        final val = _$_Promo(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          note: $checkedConvert('note', (v) => v as String),
          discount_rate: $checkedConvert(
              'discount_rate', (v) => (v as num?)?.toDouble() ?? 1),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PromoToJson(_$_Promo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'discount_rate': instance.discount_rate,
    };
