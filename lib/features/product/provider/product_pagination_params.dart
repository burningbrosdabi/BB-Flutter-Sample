import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_pagination_params.freezed.dart';

@freezed
class ProductPaginationParams with _$ProductPaginationParams {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductPaginationParams({
    required int offset,
    String? q,
  }) = _ProductPaginationParams;
}
