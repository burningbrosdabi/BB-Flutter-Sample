import 'package:dabi_chat/data/data_source.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageData extends DataSource<Message> {
  MessageData(Ref ref, String id) : super(ref, 'message_data_$id');

  @override
  Message fromJson(Map<String, dynamic> json) => Message.fromJson(json);

  @override
  Map<String, dynamic> parseJson(Message value) => value.toJson();
}
