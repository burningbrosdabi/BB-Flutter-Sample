import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dabi_chat/model/note/messenger_note.dart';
import 'package:dabi_chat/repository/notes/notes_repository.dart';
import 'package:dabi_chat/widget/modal/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

import 'compose_note_panel.dart';

class MessengerNoteListViewModel {
  MessengerNoteListViewModel({required this.ref, required this.conversation_id})
      : _notes_repository = ref.read(notes_repository(conversation_id));

  final NotesRepository _notes_repository;
  final ValueNotifier<AsyncValue<void>> notesValue =
      ValueNotifier(const AsyncValue.loading());

  List<MessengerNote> _notes = [];

  UnmodifiableListView<MessengerNote> get notes => UnmodifiableListView(_notes);

  final listKey = GlobalKey<AnimatedListState>();

  StreamSubscription? _subscription;
  final WidgetRef ref;
  final String conversation_id;

  void getAll() {
    _subscription = _notes_repository.streamingData().map((event) {
      final list = event.values.toList();
      list.sort((item1, item2) {
        return -item1.created.compareTo(item2.created);
      });
      return list;
    }).listen((event) {
      notesValue.value = const AsyncValue.data(null);
      _notes = event;
    });
  }

  void dispose() {
    _subscription?.cancel();
  }

  Tuple2<int, MessengerNote> deleteNote(int pk) {
    try {
      final index = _notes.indexWhere((element) => element.pk == pk);
      final note = _notes[index];

      _notes.removeAt(index);
      _notes_repository.deleteNote(pk);
      return Tuple2(index, note);
    } catch (e) {
      rethrow;
    }
  }

  void createNote() async {
    final note = await ref.read(modal_presentation).show<MessengerNote>(
        context: ref.context,
        builder: (context) {
          return ComposeNotePanel(
            conversation_id: conversation_id,
          );
        });
    if (note == null) return;
    // notesValue.value = AsyncValue.data(null);
    _notes.insert(0, note);
    listKey.currentState?.insertItem(0);
  }
}
