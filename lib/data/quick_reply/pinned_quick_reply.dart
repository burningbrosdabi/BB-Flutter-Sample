import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/quick_reply/quick_reply.dart';
export 'pinned_quick_reply.dart';

class PinnedReplyDataSource extends DataSource<Map<String, QuickReply>> {
  PinnedReplyDataSource(super.ref, super.name);

  @override
  Map<String, QuickReply> fromJson(Map<String, dynamic> json) {
    return json.map((key, value) {
      return MapEntry(key, QuickReply.fromJson(value));
    });
  }

  @override
  Map<String, dynamic> parseJson(Map<String, QuickReply> value) {
    return value.map((key, value) {
      return MapEntry(key, value.toJson());
    });
  }
}
