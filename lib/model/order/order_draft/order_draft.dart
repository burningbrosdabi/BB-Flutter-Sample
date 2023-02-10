import 'package:dabi_chat/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_draft.freezed.dart';

part 'order_draft.g.dart';

@freezed
class OrderDraft with _$OrderDraft {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory OrderDraft({
    Recipient? recipient,
    // String? recipient_phone,
    // String? recipient_name,
    // String? recipient_address,

    @Default(0) int shipping_fee,
    required List<CartOption> order_details,
    @Default(PaymentMethod.COD) PaymentMethod payment_method,
    @Default(0) int cod_amount,
    @Default(0) int bank_transfer_amount,
    String? gift,
    Promo? promotion,
    String? note,
  }) = _OrderDraft;

  const OrderDraft._();

  factory OrderDraft.fromJson(Map<String, dynamic> json) =>
      _$OrderDraftFromJson(json);

  factory OrderDraft.fromOrder(Order order) => OrderDraft(
        recipient: order.recipient,
        shipping_fee: order.shipping_fee,
        order_details: order.order_details,
        payment_method: order.payment_method,
        cod_amount: order.cod_amount,
        bank_transfer_amount: order.bank_transfer_amount,
        gift: order.gift,
        promotion: order.promotion,
        note: order.note,
      );
}
