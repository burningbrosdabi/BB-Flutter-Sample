import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/strings.dart';
export 'customer_dto.dart';

part 'customer.freezed.dart';

part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    @JsonKey(name: 'facebook_pk') required int pk,
    String? profile_pic,
    @Default('') String name,
    String? recipient_information,
    String? contact_information,
    String? phone_number,
    @JsonKey(name: 'recipient_ward_id') int? ward_id,
  }) = _Customer;

  const Customer._();

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  bool get missingRecipientInfo =>
      isBlank(recipient_information) ||
      isBlank(contact_information) ||
      isBlank(phone_number);
}
