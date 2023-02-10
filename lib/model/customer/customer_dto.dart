import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer.dart';

part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart';

@freezed
class CustomerDto with _$CustomerDto {
  factory CustomerDto(@JsonKey(name: 'customer') Customer value) = _CustomerDto;

  factory CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);
}
