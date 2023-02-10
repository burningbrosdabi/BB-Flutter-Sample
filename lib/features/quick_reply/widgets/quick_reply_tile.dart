import 'package:dabi_chat/features/quick_reply/provider/pinned_reply_provider.dart';
import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

class QuickReplyTile extends ConsumerWidget {
  final QuickReply item;
  final VoidCallback? onTap;
  const QuickReplyTile({required this.item, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(context, ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, left: 16.0, right: 16.0),
      child: Material(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        color: const Color(0xffF5F5F5),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: context.textTheme.labelMedium,
                      ),
                      Text(
                        item.text,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Consumer(builder: (context, ref, _) {
                      final selected =
                          ref.watch(pinnedReply).containsKey('${item.id}');
                      return IconButton(
                        onPressed: () {
                          if (selected)
                            ref
                                .read(pinnedReply.notifier)
                                .deleteAt('${item.id}');
                          else
                            ref.read(pinnedReply.notifier).append(item);
                        },
                        icon: Icon(
                          selected ? Dabicons.pin_filled : Dabicons.pin,
                        ),
                      );
                    }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
