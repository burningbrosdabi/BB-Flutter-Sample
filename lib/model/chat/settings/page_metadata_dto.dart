import 'package:dabi_chat/model/chat/chat_item/chat_item.dart';
import 'package:dabi_chat/model/chat/settings/page_metadata.dart';
import 'package:dabi_chat/model/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_metadata_dto.freezed.dart';
part 'page_metadata_dto.g.dart';

@freezed
class PageMetadataDto with _$PageMetadataDto, FromListJson {
  @JsonSerializable(checked: true)
  const factory PageMetadataDto({
    required String id,
    @JsonKey(name: 'app_name') required String name,
    int? page_id,
    int? ig_page_id,
    String? messenger_token,
    String? ig_messenger_token,
  }) = _PageMetadataDto;

  const PageMetadataDto._();

  factory PageMetadataDto.empty() => const PageMetadataDto._();

  factory PageMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$PageMetadataDtoFromJson(json);

  PageMetadata fromSource(AcquisitionSource source) {
    switch (source) {
      case AcquisitionSource.INSTAGRAM:
        assert(ig_page_id != null && ig_messenger_token != null);
        return PageMetadata.IG(
          id: id,
          name: name,
          page_id: '${ig_page_id!}',
          token: ig_messenger_token!,
        );
      case AcquisitionSource.FACEBOOK:
        assert(page_id != null && messenger_token != null);
        return PageMetadata.FB(
          id: id,
          name: name,
          page_id: '${page_id!}',
          token: messenger_token!,
        );
    }
  }

  @override
  PageMetadataDto parseItem(Map<String, dynamic> json) =>
      PageMetadataDto.fromJson(json);
}
