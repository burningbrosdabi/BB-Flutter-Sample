// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Order',
      json,
      ($checkedConvert) {
        final val = _$_Order(
          id: $checkedConvert('order_code', (v) => v as String),
          order_details: $checkedConvert(
              'order_details',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map(
                          (e) => CartOption.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          total_price: $checkedConvert('total_price', (v) => v as int),
          payment_method: $checkedConvert(
              'payment_method', (v) => $enumDecode(_$PaymentMethodEnumMap, v)),
          shipping_fee: $checkedConvert('shipping_fee', (v) => v as int? ?? 0),
          cod_amount: $checkedConvert('cod_amount', (v) => v as int? ?? 0),
          bank_transfer_amount:
              $checkedConvert('bank_transfer_amount', (v) => v as int? ?? 0),
          gift: $checkedConvert('gift', (v) => v as String?),
          promotion: $checkedConvert(
              'promotion',
              (v) =>
                  v == null ? null : Promo.fromJson(v as Map<String, dynamic>)),
          note: $checkedConvert('note', (v) => v as String?),
          created: $checkedConvert(
              'created', (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$OrderStatusEnumEnumMap, v,
                      unknownValue: OrderStatusEnum.WAIT_FOR_CONFIRM) ??
                  OrderStatusEnum.WAIT_FOR_CONFIRM),
          phone_number: $checkedConvert('phone_number', (v) => v as String?),
          contact_information:
              $checkedConvert('contact_information', (v) => v as String?),
          recipient_precise_address:
              $checkedConvert('recipient_precise_address', (v) => v as String?),
          customer_pk: $checkedConvert(
            'customer',
            (v) => v as int,
            readValue: Order.readCustomerPk,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'order_code', 'customer_pk': 'customer'},
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'order_code': instance.id,
      'order_details': instance.order_details.map((e) => e.toJson()).toList(),
      'total_price': instance.total_price,
      'payment_method': _$PaymentMethodEnumMap[instance.payment_method]!,
      'shipping_fee': instance.shipping_fee,
      'cod_amount': instance.cod_amount,
      'bank_transfer_amount': instance.bank_transfer_amount,
      'gift': instance.gift,
      'promotion': instance.promotion?.toJson(),
      'note': instance.note,
      'created': instance.created?.toIso8601String(),
      'status': _$OrderStatusEnumEnumMap[instance.status]!,
      'phone_number': instance.phone_number,
      'contact_information': instance.contact_information,
      'recipient_precise_address': instance.recipient_precise_address,
      'customer': instance.customer_pk,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.COD: 0,
  PaymentMethod.BANK_TRANSFER: 1,
  PaymentMethod.MOMO: 3,
  PaymentMethod.OTHER: 4,
  PaymentMethod.COD_AND_BANK_TRANSFER: 2,
};

const _$OrderStatusEnumEnumMap = {
  OrderStatusEnum.WAIT_FOR_CONFIRM: 'WAIT_FOR_CONFIRM',
  OrderStatusEnum.CANCELLED: 'CANCELLED',
  OrderStatusEnum.SHIPPING: 'SHIPPING',
  OrderStatusEnum.COMPLETED: 'COMPLETED',
};
