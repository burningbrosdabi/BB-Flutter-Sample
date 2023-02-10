import 'package:dabi_chat/model/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_reply.freezed.dart';

part 'quick_reply.g.dart';

@freezed
class QuickReply with _$QuickReply {
  @JsonSerializable(checked: true)
  factory QuickReply({
    required int id,
    required String title,
    required String text,
    @TimestampConverter() @Default(0) int modified,
  }) = _QuickReply;

  factory QuickReply.fromJson(Map<String, dynamic> json) =>
      _$QuickReplyFromJson(json);
}
