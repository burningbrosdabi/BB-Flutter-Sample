import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/notes/notes_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

class ComposeNotePanelViewModel {
  ComposeNotePanelViewModel({required this.ref, required this.conversation_id})
      : _repo = ref.read(notes_repository(conversation_id));

  final WidgetRef ref;
  final NotesRepository _repo;
  final String conversation_id;

  final inputController = TextEditingController();

  Future<MessengerNote> onCreate() async {
    try {
      ref.context.loaderOverlay.show();
      final response = await _repo.createNote(inputController.text);
      ref.context.loaderOverlay.hide();
      return response;
    } catch (e) {
      ref.context.loaderOverlay.hide();
      rethrow;
    }
  }
}
