import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(explicitToJson: true, checked: true)
  factory Product({
    required int id,
    required String photo,
    required String text,
    required int price,
    String? title,
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  String get short_name => title ?? text.split('\r\n').firstOrNull ?? '';
}
