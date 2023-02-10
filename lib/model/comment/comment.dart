import 'package:dabi_chat/model/comment/comment_status.dart';
import 'package:dabi_chat/model/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

part 'comment.g.dart';

enum CommentStatusEnum {
  @JsonValue('NEW')
  NEW,
  @JsonValue('REPLIED')
  REPLIED,
}

@freezed
class Comment with _$Comment {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory Comment({
    required String comment_id,
    required String customer_id,
    @Default('') String comment_text,
    String? feed_id,
    String? feed_url,
    String? comment_photo,
    String? private_replied_text,
    @Default([]) List<Comment> replies,
    @JsonKey(name: "customer_username") required String username,
    @TimestampConverter() @Default(0) int comment_at,
    @JsonKey(name: 'status')
    @Default(CommentStatusEnum.NEW)
        CommentStatusEnum statusEnum,
  }) = _Comment;

  const Comment._();

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  CommentStatus get status {
    switch (statusEnum) {
      case CommentStatusEnum.NEW:
        return const CommentStatus.isNew();
      case CommentStatusEnum.REPLIED:
        return const CommentStatus.replied();
    }
  }
}
