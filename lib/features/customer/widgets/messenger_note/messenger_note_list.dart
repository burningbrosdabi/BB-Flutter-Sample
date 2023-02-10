import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

import 'animated_note_item.dart';
import 'messenger_note_list.vm.dart';

class MessengerNoteList extends ConsumerStatefulWidget {
  const MessengerNoteList(this.conversation_id, {Key? key}) : super(key: key);

  final String conversation_id;

  @override
  ConsumerState<MessengerNoteList> createState() => _MessengerNoteListState();
}

class _MessengerNoteListState extends ConsumerState<MessengerNoteList> {
  late MessengerNoteListViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MessengerNoteListViewModel(
      ref: ref,
      conversation_id: widget.conversation_id,
    )..getAll();
  }

  void onDelete(int pk) async {
    try {
      final tuple = _viewModel.deleteNote(pk);
      _viewModel.listKey.currentState?.removeItem(tuple.item1,
          (context, animation) {
        return AnimatedMessengerNoteListItem(
          note: tuple.item2,
          onDelete: (_) {},
          animation: animation,
        );
      });
    } catch (e) {
      // _viewModel.notesValue.value = AsyncValue.data(last);
      if (mounted)
        ScaffoldMessenger.maybeOf(ref.context)?.showSnackBar(
            const SnackBar(content: Text('Đã xảy ra lỗi khi xóa')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Ghi chú',
                  style: context.textTheme.labelMedium,
                ),
              ),
              const Spacer(),
              IconButton(
                  constraints: const BoxConstraints(),
                  padding: const EdgeInsets.all(4),
                  onPressed: _viewModel.createNote,
                  icon: const Icon(
                    Dabicons.add,
                    size: 24,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ValueListenableBuilder<AsyncValue<void>>(
                valueListenable: _viewModel.notesValue,
                builder: (context, snapshot, child) {
                  return snapshot.when(data: (_) {
                    return AnimatedList(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      key: _viewModel.listKey,
                      initialItemCount: _viewModel.notes.length,
                      itemBuilder: (context, index, animation) {
                        final note = _viewModel.notes[index];
                        return AnimatedMessengerNoteListItem(
                          note: note,
                          onDelete: onDelete,
                          animation: animation,
                        );
                      },
                    );
                  }, error: (error, trace) {
                    return EmptyView.error(
                      error: $Exception.parse(error: snapshot.error!),
                    );
                  }, loading: () {
                    return const Center(child: CircularProgressIndicator());
                  });
                }),
          )
        ],
      ),
    );
  }
}
