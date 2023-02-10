import 'dart:convert';

import 'package:deep_pick/deep_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_dto.freezed.dart';
part 'reply_dto.g.dart';

@freezed
class ReplyDto with _$ReplyDto {
  factory ReplyDto({
    required String mid,
    @JsonKey(readValue: getReplyMid) required String reply_to,
  }) = _ReplyDto;

  factory ReplyDto.fromJson(Map<String, dynamic> json) =>
      _$ReplyDtoFromJson(json);
}

String getReplyMid(Map value, String key) {
  return parseReplyMid(value[key]);
}

String parseReplyMid(dynamic value) {
  final reply_to = value;
  if (value is Map) {
    return pick(value, 'mid').asStringOrThrow();
  }
  if (reply_to is! String) throw 'invalid reply_to: $reply_to';
  try {
    final map = json.decode(reply_to.replaceAll("'", "\""));
    if (map is String) return map;
    if (map is! Map || !map.containsKey('mid')) throw 'invalid reply_to format';
    return map['mid'];
  } on FormatException {
    return reply_to;
  }
}
