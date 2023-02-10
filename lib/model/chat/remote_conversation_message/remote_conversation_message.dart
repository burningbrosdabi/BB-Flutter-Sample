import 'dart:convert';

import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/model/chat/conversation/attachment/attachment.dart';
import 'package:dabi_chat/model/chat/conversation/from/from.dart';
import 'package:dabi_chat/model/chat/conversation/share/share.dart';
import 'package:dabi_chat/model/reply/reply_dto.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import 'attachtment/attachment.dart';
import 'reply.dart/reply.dart';
export './attachtment/attachment.dart';

part 'remote_conversation_message.freezed.dart';
part 'remote_conversation_message.g.dart';

@Freezed(toJson: false)
class RemoteConversationMessage with _$RemoteConversationMessage {
  factory RemoteConversationMessage({
    @JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
    @Default(false)
        bool is_delete,
    @JsonKey(name: 'mid') required String mid,
    String? text,
    @JsonKey(readValue: RemoteConversationMessage.readAttachments)
        List<RemoteMessageAttachment>? attachments,
    @JsonKey(fromJson: RemoteConversationMessage.parseSender) String? sender,
    @JsonKey(fromJson: RemoteConversationMessage.parseReply)
        RemoteMessageReply? reply_to,
  }) = _RemoteConversationMessage;

  factory RemoteConversationMessage.fromJson(Map<String, dynamic> json) =>
      _$RemoteConversationMessageFromJson(json);

  const RemoteConversationMessage._();

  static String? parseSender(Object? value) {
    if (value == null) return null;
    return pick(value, 'id').asStringOrNull();
  }

  static bool isDeleteFromJson(Object? value) {
    if (value == null) return false;
    if (value is bool) return value;
    if (value is! String) return false;
    return value.toLowerCase() == 'true';
  }

  static List<dynamic>? readAttachments(Map map, String key) {
    if (!map.containsKey(key) || map[key] == null) return null;
    if (map[key] is String) return json.decode(map[key]);
    return map[key];
  }

  static RemoteMessageReply? parseReply(dynamic value) {
    try {
      if (value is String) {
        final json_value = json.decode(value);
        final story_url = pick(json_value, 'story', 'url').asStringOrNull();
        if (story_url != null) return RemoteMessageReply.story(story_url);
      }
      final reply = parseReplyMid(value);
      return RemoteMessageReply(reply);
    } catch (e) {
      return null;
    }
  }

  Conversation? toConversation() {
    final conversation = _toConversationWithoutReply();
    if (conversation == null) return null;

    Story? story;
    String? reply_id;

    final tup = reply_to?.when<Tuple2<Story?, String?>>(
      (url) => Tuple2(null, url),
      story: (url) => Tuple2(Story.reply(link: url, text: text), null),
    );

    story = tup?.item1;
    reply_id = tup?.item2;

    if (story != null) return conversation.copyWith(story: story);
    return conversation.copyWith(reply_to: reply_id);
  }

  Conversation? _toConversationWithoutReply() {
    final log = Logging('RemoteConversationMessage');
    try {
      log.info(subTag: 'toConversation');
      final created_time = DateTime.now().toString();
      final from = From(id: sender ?? '');

      if (text?.isNotEmpty ?? false) {
        log.info(subTag: 'toConversation success', message: 'type: text');
        return Conversation(
          created_time: created_time,
          from: from,
          message: text,
          id: mid,
        );
      }
      if (attachments != null && attachments!.isNotEmpty) {
        log.info(subTag: 'toConversation', message: 'parsing attachments');
        if (attachments!.length == 1) {
          log.info(subTag: 'toConversation', message: 'single attachment');
          final concrete_element = attachments!.first.toConcrete();

          if (concrete_element is Attachment) {
            log.info(
                subTag: 'toConversation success',
                message: 'type: image attachment');
            return Conversation(
              id: mid,
              created_time: created_time,
              from: from,
              attachments: [concrete_element],
            );
          } else if (concrete_element is Share) {
            log.info(subTag: 'toConversation success', message: 'type: share');
            return Conversation(
              id: mid,
              created_time: created_time,
              from: from,
              share: concrete_element,
            );
          } else if (concrete_element is Story) {
            log.info(subTag: 'toConversation success', message: 'type: story');
            return Conversation(
              id: mid,
              created_time: created_time,
              from: from,
              story: concrete_element,
            );
          }
        }
        log.info(subTag: 'toConversation', message: 'multi attachment');
        final List<Attachment> atts = [];
        for (final element in attachments!) {
          final item = element.toConcrete();
          if (item is! Attachment) continue;
          atts.add(item);
        }
        log.info(
            subTag: 'toConversation success',
            message: 'types: multi attachment');
        return Conversation(
          id: mid,
          created_time: created_time,
          from: from,
          attachments: atts,
        );
      }
      return null;
    } catch (e) {
      log.error(
        subTag: 'toConversation failed',
        message: e.toString(),
      );
      return null;
    }
  }
}
