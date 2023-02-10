import 'dart:typed_data';

import 'package:dabi_chat/model/chat/conversation/message_metadata/custom_message_metadata.dart';
import 'package:dabi_chat/model/chat/conversation/mixin.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
part 'attachment.freezed.dart';
part 'attachment.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class Attachment with _$Attachment, MessageParserMixin {
  const Attachment._();

  @FreezedUnionValue('image')
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory Attachment.image({
    @Default(0) int size,
    @JsonKey(name: 'data') required AttachmentData data,
  }) = ImageAttachment;

  @FreezedUnionValue('video')
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory Attachment.video(
      {@JsonKey(name: 'data') required AttachmentData data}) = VideoAttachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  @override
  types.Message toMessage({required String id, required types.User author}) {
    return when<types.Message>(image: (size, data) {
      return types.ImageMessage(
        name: id,
        uri: data.preview_url ?? data.url,
        size: size,
        id: id,
        author: author,
        width: data.width?.toDouble(),
        height: data.height?.toDouble(),
        metadata: MessageMetadata.image(origin_url: data.url).toJson(),
      );
    }, video: (data) {
      return types.CustomMessage(
        metadata: MessageMetadata.video(data: data).toJson(),
        id: id,
        author: author,
      );
    });
  }
}

@freezed
class AttachmentData with _$AttachmentData {
  @JsonSerializable(checked: true)
  const factory AttachmentData({
    int? width,
    int? height,
    required String url,
    String? preview_url,
    @JsonKey(ignore: true) Uint8List? preview_bytes,
  }) = _AttachmentData;

  const AttachmentData._();

  factory AttachmentData.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDataFromJson(json);
}
