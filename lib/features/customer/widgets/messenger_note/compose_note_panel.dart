import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

import 'compose_note_panel.vm.dart';

class ComposeNotePanel extends ConsumerWidget {
  const ComposeNotePanel({required this.conversation_id, super.key});

  final String conversation_id;

  @override
  Widget build(context, ref) {
    final vm =
        ComposeNotePanelViewModel(ref: ref, conversation_id: conversation_id);

    void onCreate() async {
      FocusManager.instance.primaryFocus?.unfocus();
      try {
        final note = await vm.onCreate();
        Navigator.of(context).pop(note);
      } catch (e) {
        showDialog(
            context: ref.context,
            builder: (conversation_id) {
              return ExceptionDialog(
                exception: $Exception.parse(error: e),
              );
            });
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Tạo ghi chú'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Dabicons.close),
            )
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Theme(
              data: context.theme.copyWith(
                  inputDecorationTheme: context.theme.inputDecorationTheme
                      .copyWith(filled: false)),
              child: SizedBox.expand(
                child: TextFormField(
                  controller: vm.inputController,
                  maxLines: null,
                  decoration: const InputDecoration(hintText: 'Nhập ghi chú'),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12),
              child: ElevatedButton(
                onPressed: onCreate,
                child: const Text('LƯU'),
              ))
        ]));
  }
}
