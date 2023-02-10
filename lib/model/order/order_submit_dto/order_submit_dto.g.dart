// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_submit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderSubmitDto _$$_OrderSubmitDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderSubmitDto(
      customer: json['customer'] as int,
      recipient_phone: json['recipient_phone'] as String?,
      recipient_name: json['recipient_name'] as String?,
      recipient_address: json['recipient_address'] as String?,
      shipping_fee: json['shipping_fee'] as int,
      order_details: const ListCartOptionConverter()
          .fromJson(json['order_details'] as List),
      payment_method:
          $enumDecode(_$PaymentMethodEnumMap, json['payment_method']),
      cod_amount: json['cod_amount'] as int?,
      bank_transfer_amount: json['bank_transfer_amount'] as int?,
      gift: json['gift'] as String?,
      promotion: json['promotion'] as int?,
      note: json['note'] as String?,
      recipient_ward: json['recipient_ward'] as int?,
    );

Map<String, dynamic> _$$_OrderSubmitDtoToJson(_$_OrderSubmitDto instance) {
  final val = <String, dynamic>{
    'customer': instance.customer,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recipient_phone', instance.recipient_phone);
  writeNotNull('recipient_name', instance.recipient_name);
  writeNotNull('recipient_address', instance.recipient_address);
  val['shipping_fee'] = instance.shipping_fee;
  val['order_details'] =
      const ListCartOptionConverter().toJson(instance.order_details);
  val['payment_method'] = _$PaymentMethodEnumMap[instance.payment_method]!;
  writeNotNull('cod_amount', instance.cod_amount);
  writeNotNull('bank_transfer_amount', instance.bank_transfer_amount);
  writeNotNull('gift', instance.gift);
  writeNotNull('promotion', instance.promotion);
  writeNotNull('note', instance.note);
  writeNotNull('recipient_ward', instance.recipient_ward);
  return val;
}

const _$PaymentMethodEnumMap = {
  PaymentMethod.COD: 0,
  PaymentMethod.BANK_TRANSFER: 1,
  PaymentMethod.MOMO: 3,
  PaymentMethod.OTHER: 4,
  PaymentMethod.COD_AND_BANK_TRANSFER: 2,
};

_$_OrderPartialDto _$$_OrderPartialDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderPartialDto(
      customer: json['customer'] as int?,
      recipient_phone: json['recipient_phone'] as String?,
      recipient_name: json['recipient_name'] as String?,
      recipient_address: json['recipient_address'] as String?,
      shipping_fee: json['shipping_fee'] as int?,
      order_details: _$JsonConverterFromJson<List<dynamic>, List<CartOption>>(
          json['order_details'],
          const ListCartOptionUpdateConverter().fromJson),
      payment_method:
          $enumDecodeNullable(_$PaymentMethodEnumMap, json['payment_method']),
      cod_amount: json['cod_amount'] as int?,
      bank_transfer_amount: json['bank_transfer_amount'] as int?,
      gift: json['gift'] as String?,
      promotion: json['promotion'] as int?,
      note: json['note'] as String?,
      recipient_ward: json['recipient_ward'] as int?,
    );

Map<String, dynamic> _$$_OrderPartialDtoToJson(_$_OrderPartialDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('recipient_phone', instance.recipient_phone);
  writeNotNull('recipient_name', instance.recipient_name);
  writeNotNull('recipient_address', instance.recipient_address);
  writeNotNull('shipping_fee', instance.shipping_fee);
  writeNotNull(
      'order_details',
      _$JsonConverterToJson<List<dynamic>, List<CartOption>>(
          instance.order_details,
          const ListCartOptionUpdateConverter().toJson));
  writeNotNull(
      'payment_method', _$PaymentMethodEnumMap[instance.payment_method]);
  writeNotNull('cod_amount', instance.cod_amount);
  writeNotNull('bank_transfer_amount', instance.bank_transfer_amount);
  writeNotNull('gift', instance.gift);
  writeNotNull('promotion', instance.promotion);
  writeNotNull('note', instance.note);
  writeNotNull('recipient_ward', instance.recipient_ward);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
