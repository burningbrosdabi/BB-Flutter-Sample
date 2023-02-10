import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

import '../provider/pinned_reply_provider.dart';

class PinnedReply extends ConsumerWidget {
  const PinnedReply({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final asyncVal = ref.watch(pinnedReplyFuture);
    return asyncVal.when(data: (_) {
      return const PinnedReplyBody();
    }, error: (error, stackTrace) {
      return const Offstage();
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}

class PinnedReplyBody extends ConsumerWidget {
  const PinnedReplyBody({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final replies = ref.watch(pinnedReply);
    return LayoutBuilder(builder: (context, constraint) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Wrap(
          children: [
            for (final reply in replies.values)
              Padding(
                padding: const EdgeInsets.only(right: 12.0, bottom: 12),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        '/edit',
                        arguments: reply.id,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: const ShapeDecoration(
                        color: Colors.black,
                        shape: StadiumBorder(),
                      ),
                      child: SizedBox(
                        height: 28,
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          Flexible(
                            child: Text(
                              reply.title,
                              style: context.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(width: 4),
                          SizedBox.square(
                            dimension: 20,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              iconSize: 18,
                              onPressed: () {
                                ref
                                    .read(pinnedReply.notifier)
                                    .deleteAt('${reply.id}');
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ]),
                      ),
                    )),
              ),
          ],
        ),
      );
    });
  }
}
