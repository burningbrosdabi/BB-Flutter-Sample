// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_conversation_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteConversationMessage _$$_RemoteConversationMessageFromJson(
        Map<String, dynamic> json) =>
    _$_RemoteConversationMessage(
      is_delete: json['is_delete'] == null
          ? false
          : RemoteConversationMessage.isDeleteFromJson(json['is_delete']),
      mid: json['mid'] as String,
      text: json['text'] as String?,
      attachments:
          (RemoteConversationMessage.readAttachments(json, 'attachments')
                  as List<dynamic>?)
              ?.map((e) =>
                  RemoteMessageAttachment.fromJson(e as Map<String, dynamic>))
              .toList(),
      sender: RemoteConversationMessage.parseSender(json['sender']),
      reply_to: RemoteConversationMessage.parseReply(json['reply_to']),
    );
