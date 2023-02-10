import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/quick_reply/quick_reply.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quick_reply_list_controller =
    Provider.autoDispose<$PagingController<QuickReply, void>>(
  (ref) => $PagingController<QuickReply, void>(
    fetch: QuickRepliesRepository(ref: ref).paging,
    keyExtractor: (value) => value.id,
  ),
);
