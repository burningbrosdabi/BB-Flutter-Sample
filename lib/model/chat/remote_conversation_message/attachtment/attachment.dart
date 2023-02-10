import 'package:dabi_chat/model/chat/conversation/attachment/attachment.dart';
import 'package:dabi_chat/model/chat/conversation/share/share.dart';
import 'package:dabi_chat/model/chat/conversation/story/story.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deep_pick/deep_pick.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
class Payload with _$Payload {
  @JsonSerializable(checked: true)
  factory Payload({
    required String url,
    int? sticker_id,
  }) = _Payload;

  const Payload._();

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);
}

@Freezed(unionKey: 'type', toJson: false)
class RemoteMessageAttachment with _$RemoteMessageAttachment {
  @FreezedUnionValue('image')
  @JsonSerializable(checked: true)
  const factory RemoteMessageAttachment.image({
    required Payload payload,
  }) = _ImageRemoteMessageAttachment;

  @FreezedUnionValue('video')
  @JsonSerializable(checked: true)
  const factory RemoteMessageAttachment.video({
    @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
        required String url,
  }) = _VideoRemoteMessageAttachment;

  @FreezedUnionValue('story_mention')
  @JsonSerializable(checked: true)
  const factory RemoteMessageAttachment.storyMention({
    @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
        required String url,
  }) = _StoryMentionRemoteMessageAttachment;

  static String parsePayload(Map<String, dynamic> payload) {
    return pick(payload, 'url').asStringOrThrow();
  }

  dynamic toConcrete() {
    final log = Logging('RemoteMessageAttachment');

    final result = when(
      image: (payload) {
        log.info(subTag: 'toAttachmentOrShare', message: 'image attachment');
        final is_sticker = payload.sticker_id != null;

        log.info(
          subTag: 'toAttachmentOrShare success',
          message: is_sticker ? 'type: share' : 'type: image',
        );

        return is_sticker
            ? Share(
                url: payload.url,
                is_like_sticker: '${payload.sticker_id}' == like_sticker_id)
            : Attachment.image(
                data: AttachmentData(
                  url: payload.url,
                  preview_url: payload.url,
                ),
              );
        // return Tuple2(
        //     is_sticker
        //         ? null
        //         : Attachment.image(
        //             data: AttachmentData(
        //               url: payload.url,
        //               preview_url: payload.url,
        //             ),
        //           ),
        //     is_sticker
        //         ? Share(
        //             url: payload.url,
        //             is_like_sticker: '${payload.sticker_id}' == like_sticker_id)
        //         : null);
      },
      video: (url) {
        log.info(
          subTag: 'toAttachmentOrShare success',
          message: 'type: video',
        );
        return Attachment.video(data: AttachmentData(url: url));
      },
      storyMention: (String url) {
        return Story.mention(link: url);
      },
    );
    assert(result is Story || result is Attachment || result is Share);
    return result;
  }

  const RemoteMessageAttachment._();

  factory RemoteMessageAttachment.fromJson(Map<String, dynamic> json) =>
      _$RemoteMessageAttachmentFromJson(json);
}
