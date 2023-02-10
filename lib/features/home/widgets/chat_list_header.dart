import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiver/core.dart';

import '../provider/home_provider.dart';

class ChatListHeader extends SliverPersistentHeaderDelegate {
  final double height;
  ChatListHeader([this.height = 40]);

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    String translateStatus(Status status) {
      switch (status) {
        case Status.UNKNOWN:
          return 'Tất cả';

        case Status.UNREAD:
          return 'Chưa đọc';

        case Status.UNANSWERED:
          return 'Đã đọc';

        case Status.ANSWERED:
          return 'Đã trả lời';

        default:
          return '';
      }
    }

    return Consumer(builder: (context, ref, child) {
      final filter_text = translateStatus(ref.watch(chat_list_filter));

      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(children: [
          ValueListenableBuilder<Optional<int>>(
              valueListenable: ref.watch(chat_list_controller).countNotifier,
              builder: (context, count, child) {
                return Text(
                  '${count.or(0)} Tin',
                  style: context.textTheme.bodySmall,
                );
              }),
          const Spacer(),
          TextButton(
            style: context.textButtonStyle(textStyle: context.textTheme.button),
            onPressed: () {
              showModal(
                  context: context,
                  builder: (context) {
                    return SafeArea(
                      top: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Status.UNKNOWN,
                          Status.UNREAD,
                          Status.UNANSWERED,
                          Status.ANSWERED
                        ].map<Widget>((status) {
                          return ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            onTap: () {
                              ref.read(chat_list_filter.notifier).state =
                                  status;
                              Navigator.of(context).pop();
                            },
                            dense: true,
                            title: Text(
                              translateStatus(status),
                              style: context.textTheme.button,
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  });
            },
            child: Row(
              children: [
                Text(filter_text),
                const SizedBox(width: 4),
                const Icon(Dabicons.small_arrow_down, size: 12),
              ],
            ),
          ),
        ]),
      );
    });
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
