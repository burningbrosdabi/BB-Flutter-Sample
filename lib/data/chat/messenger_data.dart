import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessengerDataSource extends DataSource<Messenger> {
  MessengerDataSource(Ref ref, String id) : super(ref, 'message_data_$id');

  @override
  Messenger fromJson(Map<String, dynamic> json) => Messenger.fromJson(json);

  @override
  Map<String, dynamic> parseJson(Messenger value) => value.toJson();
}

class PristineMessengerDataSource extends DataSource<Map<String, dynamic>> {
  PristineMessengerDataSource(Ref ref, String id)
      : super(ref, 'pristine_messenger_data_$id');

  @override
  Future<Map<String, dynamic>?> get() {
    return super.get();
  }

  @override
  Map<String, dynamic> fromJson(Map<String, dynamic> json) => json;

  @override
  Map<String, dynamic> parseJson(Map<String, dynamic> value) => value;
}

class EtagDataSource extends DataSource<Map<String, dynamic>> {
  EtagDataSource(Ref ref) : super(ref, 'messenger_etags');

  @override
  Future<Map<String, dynamic>?> get() {
    return super.get();
  }

  @override
  Map<String, dynamic> fromJson(Map<String, dynamic> json) => json;

  @override
  Map<String, dynamic> parseJson(Map<String, dynamic> value) => value;
}
