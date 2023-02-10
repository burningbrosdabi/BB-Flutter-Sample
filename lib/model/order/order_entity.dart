import 'package:dabi_chat/model/mixin.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';

part 'order_entity.g.dart';

enum OrderStatusEnum {
  @JsonValue('WAIT_FOR_CONFIRM')
  WAIT_FOR_CONFIRM('Chờ xác nhận'),
  @JsonValue('CANCELLED')
  CANCELLED('Đã hủy'),
  @JsonValue('SHIPPING')
  SHIPPING('Đang vận chuyển'),
  @JsonValue('COMPLETED')
  COMPLETED('Hoàn thành');

  final String meaningfulText;

  const OrderStatusEnum(this.meaningfulText);

  @override
  String toString() {
    return meaningfulText;
  }
}

@freezed
class Order with _$Order {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory Order({
    @JsonKey(name: 'order_code') required String id,
    @Default([]) List<CartOption> order_details,
    required int total_price,
    required PaymentMethod payment_method,
    @Default(0) int shipping_fee,
    @Default(0) int cod_amount,
    @Default(0) int bank_transfer_amount,
    String? gift,
    Promo? promotion,
    String? note,
    @DateTimeConverter() DateTime? created,
    @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
    @Default(OrderStatusEnum.WAIT_FOR_CONFIRM)
        OrderStatusEnum status,
    String? phone_number,
    String? contact_information,
    String? recipient_precise_address,
    @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
        required int customer_pk,
  }) = _Order;

  const Order._();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  int get subtotal {
    return order_details.fold<int>(
        0, (acc, cart) => acc + cart.product.price * cart.quantity);
  }

  Recipient get recipient {
    return Recipient(
      pk: customer_pk,
      recipient_information: recipient_precise_address,
      contact_information: contact_information,
      phone_number: phone_number,
    );
  }

  static int readCustomerPk(Map map, String key) {
    return pick(map, 'customer', 'facebook_pk').asIntOrThrow();
  }
}
