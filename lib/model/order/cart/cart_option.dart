import 'package:dabi_chat/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nanoid/nanoid.dart';

part 'cart_option.freezed.dart';

part 'cart_option.g.dart';

const is_delete_field = 'is_delete';
const product_field = 'product';

@freezed
class CartOption with _$CartOption {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory CartOption({
    int? pk,
    @JsonKey(name: product_field) required Product product,
    String? note,
    @Default(1) int quantity,
    @Default(false) bool is_free,
    @JsonKey(readValue: CartOption.genUniqueId) @Default('') String uid,
    @JsonKey(name: is_delete_field) @Default(false) bool is_delete,
    @Default(false) @JsonKey(ignore: true) bool is_new,
  }) = DefaultCartOption;

  const CartOption._();

  factory CartOption.fromJson(Map<String, dynamic> json) =>
      _$CartOptionFromJson(json);

  static String genUniqueId(Map map, String id) {
    if (map.containsKey(id)) return map[id];
    return nanoid(10);
  }

  Map<String, dynamic> toSubmissionJson() {
    final json = toJson();
    json.remove(product_field);
    json[product_field] = product.id;
    json.remove(is_delete_field);
    return json;
  }

  Map<String, dynamic> toUpdateJson() {
    final json = toJson();
    json['id'] = pk;
    json.remove(product_field);
    json[product_field] = product.id;
    return json;
  }
}
