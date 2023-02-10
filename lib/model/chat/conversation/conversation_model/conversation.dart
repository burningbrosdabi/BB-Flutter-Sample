import 'package:collection/collection.dart';
import 'package:dabi_chat/model/chat/conversation/attachment/attachment.dart';
import 'package:dabi_chat/model/chat/conversation/from/from.dart';
import 'package:dabi_chat/model/chat/conversation/message_metadata/custom_message_metadata.dart';
import 'package:dabi_chat/model/chat/conversation/share/share.dart';
import 'package:dabi_chat/model/chat/conversation/story/story.dart';
import 'package:dabi_chat/model/mixin.dart';
import 'package:dabi_chat/model/reply/reply.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/helper.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation, FromListJson<Conversation> {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory Conversation({
    required String id,
    required String created_time,
    String? message,
    required From from,
    @JsonKey(readValue: Conversation.readAttachments)
        List<Attachment>? attachments,
    @JsonKey(name: 'shares', readValue: Conversation.parseShare) Share? share,
    @JsonKey(readValue: Conversation.readReply) String? reply_to,
    @JsonKey(readValue: Conversation.parseStory) Story? story,
  }) = _Conversation;

  const Conversation._();

  factory Conversation.inst() => const Conversation._();

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);

  static List<dynamic>? readAttachments(Map value, String key) {}

  static dynamic parseShare(Map value, String key) {}

  static Map<String, dynamic>? parseStory(Map value, String key) {}

  types.Message toMessage() {}

  @override
  Conversation parseItem(Map<String, dynamic> json) =>
      Conversation.fromJson(json);
}
