// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_Conversation',
      json,
      ($checkedConvert) {
        final val = _$_Conversation(
          id: $checkedConvert('id', (v) => v as String),
          created_time: $checkedConvert('created_time', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String?),
          from: $checkedConvert(
              'from', (v) => From.fromJson(v as Map<String, dynamic>)),
          attachments: $checkedConvert(
            'attachments',
            (v) => (v as List<dynamic>?)
                ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
                .toList(),
            readValue: Conversation.readAttachments,
          ),
          share: $checkedConvert(
            'shares',
            (v) => v == null ? null : Share.fromJson(v as Map<String, dynamic>),
            readValue: Conversation.parseShare,
          ),
          reply_to: $checkedConvert(
            'reply_to',
            (v) => v as String?,
            readValue: Conversation.readReply,
          ),
          story: $checkedConvert(
            'story',
            (v) => v == null ? null : Story.fromJson(v as Map<String, dynamic>),
            readValue: Conversation.parseStory,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'share': 'shares'},
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time': instance.created_time,
      'message': instance.message,
      'from': instance.from.toJson(),
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'shares': instance.share?.toJson(),
      'reply_to': instance.reply_to,
      'story': instance.story?.toJson(),
    };
