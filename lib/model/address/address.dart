import 'package:dabi_chat/model/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
export 'address_type.dart';
export 'address_selection_type.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address, FromListJson<Address> {
  const factory Address({
    required int id,
    required String name,
  }) = _Address;

  const Address._();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  Address parseItem(Map<String, dynamic> json) => Address.fromJson(json);
}
