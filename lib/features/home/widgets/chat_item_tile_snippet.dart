import 'package:dabi_chat/features/status/provider/status_provider.dart';
import 'package:dabi_chat/model/chat/chat_item/chat_item.dart' as chat_item;
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

import '../provider/provider.dart';

class ChatItemTileSnippet extends ConsumerStatefulWidget {
  final ChatItem item;

  const ChatItemTileSnippet({required this.item, super.key});

  @override
  ConsumerState<ChatItemTileSnippet> createState() =>
      _ChatItemTileSnippetState();
}

class _ChatItemTileSnippetState extends ConsumerState<ChatItemTileSnippet> {
  String get conversation_id => widget.item.conversation_id;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref
          .read(chat_snippet(conversation_id).notifier)
          .setFromChatItem(widget.item);
    });
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant ChatItemTileSnippet oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref
          .read(chat_snippet(conversation_id).notifier)
          .setFromChatItem(widget.item);
    });
  }

  @override
  Widget build(BuildContext context) {
    final is_unread =
        ref.watch(status_provider(conversation_id)) == chat_item.Status.UNREAD;
    final snippet = ref.watch(chat_snippet(conversation_id));

    return Text(
      snippet,
      style: context.textTheme.bodyMedium!.copyWith(
        color: is_unread ? Colors.black : component_gray,
        fontWeight: is_unread ? FontWeight.bold : FontWeight.normal,
      ),
      maxLines: 2,
    );
  }
}
