import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_category.freezed.dart';
part 'gallery_category.g.dart';

@Freezed()
class GalleryCategory with _$GalleryCategory {
  @JsonSerializable(checked: true)
  const factory GalleryCategory({
    required int id,
    required String title,
  }) = _GalleryCategory;

  const GalleryCategory._();

  factory GalleryCategory.fromJson(Map<String, dynamic> json) =>
      _$GalleryCategoryFromJson(json);
}
