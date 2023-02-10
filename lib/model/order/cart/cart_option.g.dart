// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DefaultCartOption _$$DefaultCartOptionFromJson(Map<String, dynamic> json) =>
    _$DefaultCartOption(
      pk: json['pk'] as int?,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      note: json['note'] as String?,
      quantity: json['quantity'] as int? ?? 1,
      is_free: json['is_free'] as bool? ?? false,
      uid: CartOption.genUniqueId(json, 'uid') as String? ?? '',
      is_delete: json['is_delete'] as bool? ?? false,
    );

Map<String, dynamic> _$$DefaultCartOptionToJson(_$DefaultCartOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pk', instance.pk);
  val['product'] = instance.product.toJson();
  writeNotNull('note', instance.note);
  val['quantity'] = instance.quantity;
  val['is_free'] = instance.is_free;
  val['uid'] = instance.uid;
  val['is_delete'] = instance.is_delete;
  return val;
}
