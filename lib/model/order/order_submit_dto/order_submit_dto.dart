import 'package:dabi_chat/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter.dart';

part 'order_submit_dto.freezed.dart';

part 'order_submit_dto.g.dart';

enum PaymentMethod {
  @JsonValue(0)
  COD(value: 'COD', name: 'Thanh toán khi nhận hàng'),
  @JsonValue(1)
  BANK_TRANSFER(value: 'BANK_TRANSFER', name: 'Chuyển khoản'),
  @JsonValue(3)
  MOMO(value: 'MOMO', name: 'MoMo'),
  @JsonValue(4)
  OTHER(value: 'OTHER', name: 'Khác'),
  @JsonValue(2)
  COD_AND_BANK_TRANSFER(value: 'COD_AND_BANK_TRANSFER', name: 'Đặt cọc trước'),
  ;

  final String value;
  final String name;

  const PaymentMethod({required this.value, required this.name});

  @override
  String toString() {
    return value;
  }
}

@freezed
class OrderSubmitDto with _$OrderSubmitDto {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory OrderSubmitDto({
    required int customer,
    String? recipient_phone,
    String? recipient_name,
    String? recipient_address,
    required int shipping_fee,
    @ListCartOptionConverter() required List<CartOption> order_details,
    required PaymentMethod payment_method,
    int? cod_amount,
    int? bank_transfer_amount,
    String? gift,
    int? promotion,
    String? note,
    int? recipient_ward,
  }) = _OrderSubmitDto;

  const OrderSubmitDto._();

  factory OrderSubmitDto.fromJson(Map<String, dynamic> json) =>
      _$OrderSubmitDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    assert(payment_method == PaymentMethod.COD && cod_amount != null);
    assert(payment_method == PaymentMethod.BANK_TRANSFER &&
        bank_transfer_amount != null);
    assert(payment_method == PaymentMethod.COD_AND_BANK_TRANSFER &&
        bank_transfer_amount != null &&
        cod_amount != null);
    return super.toJson();
  }
}

@freezed
class OrderPartialDto with _$OrderPartialDto {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory OrderPartialDto({
    int? customer,
    String? recipient_phone,
    String? recipient_name,
    String? recipient_address,
    int? shipping_fee,
    @ListCartOptionUpdateConverter() List<CartOption>? order_details,
    PaymentMethod? payment_method,
    int? cod_amount,
    int? bank_transfer_amount,
    String? gift,
    int? promotion,
    String? note,
    int? recipient_ward,
  }) = _OrderPartialDto;

  const OrderPartialDto._();

  factory OrderPartialDto.fromJson(Map<String, dynamic> json) =>
      _$OrderPartialDtoFromJson(json);

  bool get isEmpty {
    return ![
      customer,
      recipient_phone,
      recipient_name,
      recipient_address,
      shipping_fee,
      order_details,
      payment_method,
      cod_amount,
      bank_transfer_amount,
      gift,
      promotion,
      note,
      recipient_ward
    ].any((element) => element != null);
  }
}
