import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dabi_chat/services/http/http.dart';

class NotesApi {
  NotesApi({required Ref ref, required this.conversation_id})
      : http = ref.read(http_provider);

  final Http http;
  final String conversation_id;

  Future<Map<int, MessengerNote>> getAll() async {
    final response = await http.get('messengers/$conversation_id/notes/');
    final pagination_res = PaginationResponse.skippableFromJson(
      response,
      (json) => MessengerNote.fromJson(json as Map<String, dynamic>),
    );
    return {
      for (final element
          in List.castFrom<dynamic, MessengerNote>(pagination_res.results))
        element.pk: element,
    };
  }

  Future<MessengerNote> create(String text) async {
    final response = await http
        .post('messengers/$conversation_id/notes/', data: {'text': text});
    return MessengerNote.fromJson(response);
  }

  Future<void> delete(int pk) async {
    await http.delete('messenger-notes/$pk/');
  }
}
