import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_selection_type.freezed.dart';

@freezed
class AddressSelectionType with _$AddressSelectionType {
  const factory AddressSelectionType.store(
      {@Default(11003)
          int ward_id,
      @Default('05 Phan Kế Bính, Đa Kao, Quận 1, Thành phố Hồ Chí Minh ')
          String precise_address}) = StoreAddressSelectionType;

  const factory AddressSelectionType.custom() = CustomAddressSelectionType;
}
