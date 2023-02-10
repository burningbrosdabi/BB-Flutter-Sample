import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_page_mode.freezed.dart';

@freezed
class CartPageMode with _$CartPageMode {
  const factory CartPageMode.create() = CreateMode;

  const factory CartPageMode.update() = UpdateMode;
}
