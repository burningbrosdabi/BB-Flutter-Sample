import 'package:dabi_chat/model/chat/conversation/attachment/attachment.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

export 'chat_snippet.dart';

part 'chat_item.freezed.dart';
part 'chat_item.g.dart';

enum Status {
  @JsonValue('UNKNOWN')
  UNKNOWN('UNKNOWN'),

  @JsonValue('UNREAD')
  UNREAD('UNREAD'),

  @JsonValue('UNANSWERED')
  UNANSWERED('UNANSWERED'),

  @JsonValue('ANSWERED')
  ANSWERED('ANSWERED'),

  @JsonValue('CLOSED')
  CLOSED('CLOSED'),

  @JsonValue('LEAVE')
  LEAVE('LEAVE');

  final String status;
  const Status(this.status);

  @override
  String toString() {
    return status;
  }
}

enum AcquisitionSource {
  @JsonValue('INSTAGRAM')
  INSTAGRAM('ig'),
  @JsonValue('FACEBOOK')
  FACEBOOK('fb');

  final String source;
  const AcquisitionSource(this.source);

  @override
  String toString() {
    return source;
  }
}

@Freezed()
class ChatItem with _$ChatItem {
  @JsonSerializable(checked: true, explicitToJson: true)
  const factory ChatItem({
    required String conversation_id,
    @Default('') String page,
    @JsonKey(name: 'attachments', readValue: ChatItem.readAttachment, fromJson: ChatItem.parseAttachment)
        List<Attachment>? attachments,
    @JsonKey(name: 'latest_message') required String? message,
    @JsonKey(unknownEnumValue: Status.UNREAD)
    @Default(Status.UNREAD)
        Status status,
    @JsonKey(fromJson: parseDate) required DateTime modified,
    @JsonKey(name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
        required AcquisitionSource source,
    @JsonKey(readValue: ChatItem.readProfilePic) String? profile_pic,
    @JsonKey(readValue: ChatItem.readCustomerName) String? customer_name,
    @Default(false) bool is_last_sent_from_page,
  }) = _ChatItem;

  const ChatItem._();

  static dynamic parseAttachment(json) => json;

  static List<Attachment>? readAttachment(Map map, String key) {
    final list = pick(map, key)
        .asListOrNull((pick) {
          final type = pick('type').asStringOrNull();
          if (type == 'image')
            return const Attachment.image(data: AttachmentData(url: ''));
          else if (type == 'video')
            return const Attachment.video(data: AttachmentData(url: ''));
          return null;
        })
        ?.whereNotNull()
        .toList();
    if (list == null || list.isEmpty) return null;
    return list;
  }

  static String? readProfilePic(Map value, String key) {
    return pick(value, 'customer', key).asStringOrNull();
  }

  static String? readCustomerName(Map value, String key) {
    return pick(value, 'customer', 'name').asStringOrNull();
  }

  factory ChatItem.cached(String pk) => ChatItem(
      conversation_id: pk,
      message: '',
      modified: DateTime.now(),
      source: AcquisitionSource.FACEBOOK,
      page: '');

  factory ChatItem.fromJson(Map<String, dynamic> json) =>
      _$ChatItemFromJson(json);
}
