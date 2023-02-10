// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Comment',
      json,
      ($checkedConvert) {
        final val = _$_Comment(
          comment_id: $checkedConvert('comment_id', (v) => v as String),
          customer_id: $checkedConvert('customer_id', (v) => v as String),
          comment_text:
              $checkedConvert('comment_text', (v) => v as String? ?? ''),
          feed_id: $checkedConvert('feed_id', (v) => v as String?),
          feed_url: $checkedConvert('feed_url', (v) => v as String?),
          comment_photo: $checkedConvert('comment_photo', (v) => v as String?),
          private_replied_text:
              $checkedConvert('private_replied_text', (v) => v as String?),
          replies: $checkedConvert(
              'replies',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          username: $checkedConvert('customer_username', (v) => v as String),
          comment_at: $checkedConvert(
              'comment_at',
              (v) => v == null
                  ? 0
                  : const TimestampConverter().fromJson(v as String)),
          statusEnum: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$CommentStatusEnumEnumMap, v) ??
                  CommentStatusEnum.NEW),
        );
        return val;
      },
      fieldKeyMap: const {
        'username': 'customer_username',
        'statusEnum': 'status'
      },
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'comment_id': instance.comment_id,
      'customer_id': instance.customer_id,
      'comment_text': instance.comment_text,
      'feed_id': instance.feed_id,
      'feed_url': instance.feed_url,
      'comment_photo': instance.comment_photo,
      'private_replied_text': instance.private_replied_text,
      'replies': instance.replies.map((e) => e.toJson()).toList(),
      'customer_username': instance.username,
      'comment_at': const TimestampConverter().toJson(instance.comment_at),
      'status': _$CommentStatusEnumEnumMap[instance.statusEnum]!,
    };

const _$CommentStatusEnumEnumMap = {
  CommentStatusEnum.NEW: 'NEW',
  CommentStatusEnum.REPLIED: 'REPLIED',
};
