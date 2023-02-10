import 'package:dabi_chat/data/notes/note_data.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/notes/notes_api.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotesRepository with CachingStrategies<Map<int, MessengerNote>> {
  NotesRepository({required Ref ref, required this.conversation_id})
      : _note_datasource = NoteDatasource(ref, conversation_id),
        _notes_api = NotesApi(ref: ref, conversation_id: conversation_id);

  final String conversation_id;
  final NoteDatasource _note_datasource;
  final NotesApi _notes_api;

  Stream<Map<int, MessengerNote>> streamingData() {
    return cacheThenUpdate(() => _notes_api.getAll());
  }

  Future<MessengerNote> createNote(String text) async {
    final note = await _notes_api.create(text);
    await _note_datasource.put({note.pk: note}, merged: true);
    return note;
  }

  Future<void> deleteNote(int pk) async {
    await _notes_api.delete(pk);
    await _note_datasource.deleteAt('$pk');
  }

  @override
  Future<Map<int, MessengerNote>?> get() {
    return _note_datasource.get();
  }

  @override
  Future<void> save(Map<int, MessengerNote> value) async {
    return _note_datasource.put(value);
  }
}

final notes_repository = Provider.family<NotesRepository, String>(
    (ref, id) => NotesRepository(ref: ref, conversation_id: id));
