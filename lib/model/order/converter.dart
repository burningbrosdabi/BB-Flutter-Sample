import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart/cart_option.dart';

class ListCartOptionConverter
    implements JsonConverter<List<CartOption>, List<dynamic>> {
  const ListCartOptionConverter();

  @override
  List<CartOption> fromJson(List<dynamic> json) {
    return json.map((e) => CartOption.fromJson(e)).toList();
  }

  @override
  List<dynamic> toJson(List<CartOption> object) {
    final List<Map<String, dynamic>> data = [];
    for (final item in object) {
      data.add(item.toSubmissionJson());
    }
    return data;
  }
}

class ListCartOptionUpdateConverter
    implements JsonConverter<List<CartOption>, List<dynamic>> {
  const ListCartOptionUpdateConverter();

  @override
  List<CartOption> fromJson(List<dynamic> json) {
    return json.map((e) => CartOption.fromJson(e)).toList();
  }

  @override
  List<dynamic> toJson(List<CartOption> object) {
    final List<Map<String, dynamic>> data = [];
    for (final item in object) {
      Map<String, dynamic> value;
      if (item.is_new) {
        value = item.toSubmissionJson();
      } else {
        value = item.toUpdateJson();
      }
      data.add(value);
    }
    return data;
  }
}
