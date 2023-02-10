import 'package:collection/collection.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true, copyWith: false, toJson: false)
class PaginationResponse<T> with _$PaginationResponse {
  factory PaginationResponse({
    @Default(0) count,
    @JsonKey(name: 'next', readValue: PaginationResponse.readNext)
    @Default(false)
        bool has_next,
    required List<T> results,
  }) = _PaginationResponse;

  static bool readNext(Map value, String key) {
    final next = pick(value, key).asStringOrNull();
    return next != null;
  }

  factory PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationResponseFromJson<T>(json, fromJsonT);

  factory PaginationResponse.skippableFromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    final data = PaginationResponse.fromJson(json, (obj) {
      try {
        final item = fromJsonT(obj);
        return item;
      } catch (e) {
        return null;
      }
    });
    return PaginationResponse<T>(
        results: data.results.whereNotNull().cast<T>().toList(),
        count: data.count,
        has_next: data.has_next);
  }
}
