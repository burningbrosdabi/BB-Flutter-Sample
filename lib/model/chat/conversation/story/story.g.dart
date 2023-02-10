// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryReply _$$StoryReplyFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$StoryReply',
      json,
      ($checkedConvert) {
        final val = _$StoryReply(
          link: $checkedConvert('link', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$StoryReplyToJson(_$StoryReply instance) =>
    <String, dynamic>{
      'link': instance.link,
      'text': instance.text,
      'type': instance.$type,
    };

_$StoryMention _$$StoryMentionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StoryMention',
      json,
      ($checkedConvert) {
        final val = _$StoryMention(
          link: $checkedConvert('link', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$StoryMentionToJson(_$StoryMention instance) =>
    <String, dynamic>{
      'link': instance.link,
      'text': instance.text,
      'type': instance.$type,
    };
