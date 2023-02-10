import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/repository/chat/chat_item_repository.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:riverpod/riverpod.dart';

final chat_list_controller =
    Provider.autoDispose<$PagingController<ChatItem, Status>>(
  (ref) => $PagingController<ChatItem, Status>(
    fetch: ChatItemRepository(ref: ref).getChats,
    keyExtractor: (value) => value.conversation_id,
  ),
);

final chat_list_filter = StateProvider<Status>((ref) => Status.UNKNOWN);
