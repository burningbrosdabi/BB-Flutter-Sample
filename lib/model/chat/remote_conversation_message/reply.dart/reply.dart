import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply.freezed.dart';
part 'reply.g.dart';

@freezed
class RemoteMessageReply with _$RemoteMessageReply {
  factory RemoteMessageReply(
    String url,
  ) = _RemoteMessageReply;

  factory RemoteMessageReply.story(String url) = RemoteMessageStoryReply;

  factory RemoteMessageReply.fromJson(Map<String, dynamic> json) =>
      _$RemoteMessageReplyFromJson(json);
}
