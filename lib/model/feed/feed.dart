import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dabi_chat/utils/utils.dart';
part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
class Feed with _$Feed {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory Feed({
    required String id,
    @Default('') String message,
    @JsonKey(fromJson: parseDate) DateTime? created_time,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
