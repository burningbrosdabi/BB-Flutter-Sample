import 'package:dabi_chat/data/data_source.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

class ReplyDataSource extends DataSource<Map<String, Message>> {
  ReplyDataSource(super.ref, super.name);

  @override
  Map<String, Message> fromJson(Map<String, dynamic> json) {
    return json.map((key, value) {
      return MapEntry(key, Message.fromJson(value));
    });
  }

  @override
  Map<String, dynamic> parseJson(Map<String, Message> value) {
    return value.map((key, value) {
      return MapEntry(key, value.toJson());
    });
  }
}
