import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/features/quick_reply/widgets/quick_reply_tile.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class QuickReplyList extends ConsumerWidget {
  final Function(QuickReply item) onSelectItem;

  const QuickReplyList({
    required this.onSelectItem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    return PagedSliverList<int, QuickReply>(
        pagingController:
            ref.read(quick_reply_list_controller).pagingController,
        builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (BuildContext context, item, int index) {
          return QuickReplyTile(
            item: item,
            onTap: () => onSelectItem(item),
          );
        }));
    // ListView.separated(
    //   padding: const EdgeInsets.only(top: 12),
    //   controller: ModalScrollController.of(context),
    //   separatorBuilder: (context, index) => const Divider(
    //     height: 0,
    //   ),
    //   itemBuilder: (context, index) {
    //     final item = data[index];
    //     return QuickReplyTile(
    //       item: item,
    //       onTap: () => onSelectItem(item),
    //     );
    //   },
    //   itemCount: data.length,
    // );
  }
}
