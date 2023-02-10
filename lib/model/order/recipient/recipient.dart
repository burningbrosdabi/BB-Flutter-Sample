import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/strings.dart';

import '../../customer/customer.dart';

part 'recipient.freezed.dart';

part 'recipient.g.dart';

@freezed
class Recipient with _$Recipient {
  @JsonSerializable(explicitToJson: true)
  const factory Recipient({
    required int pk,
    @JsonKey(name: 'recipient_address') String? recipient_information,
    @JsonKey(name: 'recipient_name') String? contact_information,
    @JsonKey(name: 'recipient_phone') String? phone_number,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> json) =>
      _$RecipientFromJson(json);

  factory Recipient.fromCustomer(Customer customer) => Recipient(
        pk: customer.pk,
        recipient_information: customer.recipient_information,
        contact_information: customer.contact_information,
        phone_number: customer.phone_number,
      );

  const Recipient._();

  bool get missingRecipientInfo =>
      isBlank(recipient_information) ||
      isBlank(contact_information) ||
      isBlank(phone_number);
}
