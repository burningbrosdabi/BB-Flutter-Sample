import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_photo.freezed.dart';
part 'gallery_photo.g.dart';

enum GalleryType { image, video }

@freezed
class GalleryPhoto with _$GalleryPhoto {
  factory GalleryPhoto({
    required int id,
    required int category,
    required String photo_url,
  }) = _GalleryPhoto;

  const GalleryPhoto._();

  factory GalleryPhoto.fromJson(Map<String, dynamic> json) =>
      _$GalleryPhotoFromJson(json);

  GalleryType get type {
    final url = Uri.tryParse(photo_url);
    if (url == null) throw FormatException('invalid url: $url');
    if (url.pathSegments.last.contains('.mp4')) return GalleryType.video;
    return GalleryType.image;
  }
}
