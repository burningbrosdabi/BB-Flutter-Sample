import 'package:freezed_annotation/freezed_annotation.dart';
part 'address_type.freezed.dart';

@freezed
class AddressType with _$AddressType {
  factory AddressType.province() = _AddressProvinceType;
  factory AddressType.district() = _AddressDistrictType;
  factory AddressType.ward() = _AddressWardType;
}
