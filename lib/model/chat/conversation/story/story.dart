import 'package:dabi_chat/model/chat/conversation/message_metadata/custom_message_metadata.dart';
import 'package:dabi_chat/model/chat/conversation/mixin.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
class Story with _$Story, MessageParserMixin {
  const Story._();

  @FreezedUnionValue('reply')
  @JsonSerializable(checked: true, explicitToJson: true)
  factory Story.reply({
    required String? link,
    String? text,
  }) = StoryReply;

  @FreezedUnionValue('mention')
  @JsonSerializable(checked: true, explicitToJson: true)
  factory Story.mention({
    required String? link,
    String? text,
  }) = StoryMention;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  @override
  types.Message toMessage({required String id, required types.User author}) {
    return types.CustomMessage(
      id: id,
      metadata: when(reply: (link, text) {
        return MessageMetadata.story(
                url: link, text: text, title: 'Đã phản hồi từ story')
            .toJson();
      }, mention: (link, text) {
        return MessageMetadata.story(
                url: link, text: text, title: 'Đã nhắc đến bạn trong story')
            .toJson();
      }),
      author: author,
    );
  }
}

enum MediaStoryType {
  @JsonValue('video')
  video,
  @JsonValue('image')
  image,
  @JsonValue('expired')
  expired,
  @JsonValue('unknown')
  unknown,
}
