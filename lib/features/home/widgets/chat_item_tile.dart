import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/features/home/widgets/chat_item_tile_snippet.dart';
import 'package:dabi_chat/features/status/provider/status_provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:dabi_chat/model/chat/chat_item/chat_item.dart' as chat_item;

import 'customer_avatar.dart';

class ChatItemTile extends ConsumerWidget {
  final ChatItem item;

  const ChatItemTile({
    required this.item,
    super.key,
  });

  @override
  Widget build(context, ref) {
    return Consumer(
      child: ChatItemTileSnippet(item: item),
      builder: (context, ref, child) {
        final is_unread = ref.watch(status_provider(item.conversation_id)) ==
            chat_item.Status.UNREAD;

        return ListTile(
          tileColor: is_unread
              ? context.theme.primaryColor.withOpacity(0.033)
              : Colors.transparent,
          onTap: () {
            ref.read(navigatorProvider).push($Route.chat(ChatPageParams(
                  id: item.conversation_id,
                  setting_id: item.page,
                  source: item.source,
                )));
          },
          leading: $Badge(
              showBadge: is_unread,
              child: CustomerAvatar(
                profile_pic: item.profile_pic,
                source: item.source,
              )),
          title: Text(
            item.customer_name ?? '',
            style: context.textTheme.labelMedium,
            maxLines: 1,
          ),
          subtitle: child,
        );
      },
    );
  }
}
