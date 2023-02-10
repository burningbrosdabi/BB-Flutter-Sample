import 'package:dabi_chat/features/chat/chat.dart' hide Status;
import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/messenger/messenger_service.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:rxdart/rxdart.dart';

class ChatListViewBody extends ConsumerStatefulWidget {
  const ChatListViewBody({Key? key}) : super(key: key);

  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends ConsumerState<ChatListViewBody>
    with
        AssigningObserver,
        WidgetsBindingObserver,
        AutomaticKeepAliveClientMixin {
  final _assign_refresh_stream = PublishSubject<void>();

  @override
  void initState() {
    super.initState();
    ref.read(messengerService).subscribeAssignObserver(this);
    WidgetsBinding.instance.addObserver(this);
    _assign_refresh_stream.debounceTime(const Duration(seconds: 1)).listen(
        (_) => ref.read(chat_list_controller).refresh(background: true));
  }

  @override
  void deactivate() {
    super.deactivate();
    _assign_refresh_stream.close();
    ref.read(messengerService).unsubscribeAssignObserver(this);
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void onAssigned(ChatPageParams params) {
    _assign_refresh_stream.add(null);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state != AppLifecycleState.resumed) return;
    ref.watch(chat_list_controller).refresh(background: true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    ref.listen<Status>(chat_list_filter, (previous, next) {
      if (previous == next) return;
      ref.read(chat_list_controller).updateFilter(next);
    });
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverPersistentHeader(
          delegate: ChatListHeader(),
          pinned: false,
          floating: true,
        ),
      ],
      body: RefreshIndicator(
        onRefresh: () =>
            ref.watch(chat_list_controller).refresh(background: true),
        child: PagedListView<int, ChatItem>(
          pagingController: ref.watch(chat_list_controller).pagingController,
          builderDelegate: PagedChildBuilderDelegate<ChatItem>(
            noItemsFoundIndicatorBuilder: (context) => const Padding(
              padding: EdgeInsets.only(bottom: kToolbarHeight),
              child: EmptyView(
                imagePath: 'assets/images/empty/follow.png',
                description: 'Sao hổng có gì hết trơn...',
                title: 'Ủa!!!',
              ),
            ),
            itemBuilder: (context, item, index) => Slidable(
              key: ValueKey(item.conversation_id),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    spacing: 1,
                    onPressed: (_) async {
                      try {
                        context.loaderOverlay.show();
                        await ref
                            .read(messengerRepoProvider(item.conversation_id))
                            .clearCache();
                        ref.refresh(chatProvider(item.conversation_id));
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Xoá thành công')));
                      } finally {
                        context.loaderOverlay.hide();
                      }
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    label: 'Xóa cache',
                  ),
                ],
              ),
              child: ChatItemTile(
                item: item,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
