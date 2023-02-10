import 'package:dabi_chat/model/chat/conversation/attachment/attachment.dart';
import 'package:dabi_chat/model/exception/exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_message_metadata.freezed.dart';
part 'custom_message_metadata.g.dart';

@freezed
class MessageMetadata with _$MessageMetadata {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata({
    MeaningfulException? error,
    String? reply_to,
  }) = _MessageMetadata;

  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata.video({
    required AttachmentData data,
    MeaningfulException? error,
    String? reply_to,
  }) = VideoMetadata;

  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata.image({
    required String origin_url,
    MeaningfulException? error,
    String? reply_to,
  }) = ImageMetadata;

  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata.attachments({
    required List<Attachment> attachments,
    MeaningfulException? error,
    String? reply_to,
  }) = AttachmentsMetadata;

  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata.share({
    required String url,
    @Default(false) bool is_like_sticker,
    MeaningfulException? error,
    String? reply_to,
  }) = ShareMetadata;

  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata.story({
    String? url,
    String? text,
    @Default('Phản hồi') String title,
    MeaningfulException? error,
    String? reply_to,
  }) = StoryMetadata;

  @JsonSerializable(checked: true, explicitToJson: true)
  const factory MessageMetadata.owner_request({
    MeaningfulException? error,
    String? reply_to,
  }) = OwnerRequestMetadata;

  const MessageMetadata._();

  factory MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataFromJson(json);
}
