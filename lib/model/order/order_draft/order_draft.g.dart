// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_draft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDraft _$$_OrderDraftFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_OrderDraft',
      json,
      ($checkedConvert) {
        final val = _$_OrderDraft(
          recipient: $checkedConvert(
              'recipient',
              (v) => v == null
                  ? null
                  : Recipient.fromJson(v as Map<String, dynamic>)),
          shipping_fee: $checkedConvert('shipping_fee', (v) => v as int? ?? 0),
          order_details: $checkedConvert(
              'order_details',
              (v) => (v as List<dynamic>)
                  .map((e) => CartOption.fromJson(e as Map<String, dynamic>))
                  .toList()),
          payment_method: $checkedConvert(
              'payment_method',
              (v) =>
                  $enumDecodeNullable(_$PaymentMethodEnumMap, v) ??
                  PaymentMethod.COD),
          cod_amount: $checkedConvert('cod_amount', (v) => v as int? ?? 0),
          bank_transfer_amount:
              $checkedConvert('bank_transfer_amount', (v) => v as int? ?? 0),
          gift: $checkedConvert('gift', (v) => v as String?),
          promotion: $checkedConvert(
              'promotion',
              (v) =>
                  v == null ? null : Promo.fromJson(v as Map<String, dynamic>)),
          note: $checkedConvert('note', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_OrderDraftToJson(_$_OrderDraft instance) =>
    <String, dynamic>{
      'recipient': instance.recipient?.toJson(),
      'shipping_fee': instance.shipping_fee,
      'order_details': instance.order_details.map((e) => e.toJson()).toList(),
      'payment_method': _$PaymentMethodEnumMap[instance.payment_method]!,
      'cod_amount': instance.cod_amount,
      'bank_transfer_amount': instance.bank_transfer_amount,
      'gift': instance.gift,
      'promotion': instance.promotion?.toJson(),
      'note': instance.note,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.COD: 0,
  PaymentMethod.BANK_TRANSFER: 1,
  PaymentMethod.MOMO: 3,
  PaymentMethod.OTHER: 4,
  PaymentMethod.COD_AND_BANK_TRANSFER: 2,
};
