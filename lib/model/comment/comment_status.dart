import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_status.freezed.dart';

@freezed
class CommentStatus with _$CommentStatus {
  const factory CommentStatus.isNew() = _NewCommentStatus;
  const factory CommentStatus.replied() = _RepliedCommentStatus;
}
