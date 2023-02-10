import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_metadata.freezed.dart';
part 'page_metadata.g.dart';

@freezed
class PageMetadata with _$PageMetadata {
  @JsonSerializable(checked: true)
  const PageMetadata._();

  const factory PageMetadata.IG({
    required String id,
    required String name,
    required String page_id,
    required String token,
  }) = IGPageMetadata;

  const factory PageMetadata.FB({
    required String id,
    required String name,
    required String page_id,
    required String token,
  }) = FBPageMetadata;

  factory PageMetadata.empty() => const PageMetadata._();

  factory PageMetadata.fromJson(Map<String, dynamic> json) =>
      _$PageMetadataFromJson(json);

  // @override
  // PageMetadata parseItem(Map<String, dynamic> json) =>
  //     PageMetadata.fromJson(json);
}
