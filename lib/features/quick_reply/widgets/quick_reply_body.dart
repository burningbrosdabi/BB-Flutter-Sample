import 'package:dabi_chat/features/quick_reply/quick_reply.dart';
import 'package:dabi_chat/features/quick_reply/widgets/pinned_reply.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'quick_reply_search_delegate.dart';

class QuickReplyBody extends ConsumerStatefulWidget {
  final List<QuickReply> data;

  const QuickReplyBody({required this.data, Key? key}) : super(key: key);

  @override
  _QuickReplyBodyState createState() => _QuickReplyBodyState();
}

class _QuickReplyBodyState extends ConsumerState<QuickReplyBody> {
  ValueNotifier<int> indexValue = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
  }

  void onSelectItem(QuickReply reply) {
    Navigator.of(context).pushNamed(
      '/edit',
      arguments: reply.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: indexValue,
      builder: (context, index, child) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                final reply = await showSearch<QuickReply>(
                    context: context,
                    delegate: QuickReplySearchDelegate(data: widget.data));
                if (reply != null) {
                  onSelectItem(reply);
                }
              },
              child: const Icon(Icons.search),
            ),
            body: CustomScrollView(
              controller: ModalScrollController.of(context),
              slivers: [
                const SliverPadding(padding: EdgeInsets.only(top: 12)),
                const SliverToBoxAdapter(
                  child: PinnedReply(),
                ),
                QuickReplyList(
                  onSelectItem: onSelectItem,
                ),
              ],
            ));
      },
    );
  }
}
