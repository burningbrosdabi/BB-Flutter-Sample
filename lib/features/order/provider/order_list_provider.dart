import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/infinite_list/infinite_list.dart';
import '../model/order_args.dart';
import 'provider.dart';

final order_list_provider =
    Provider.family<$PagingController<Order, void>, String>(
  (ref, conversation_id) => $PagingController<Order, void>(
    fetch: ref
        .read(order_repository(OrderArgs(
          conversation_id: conversation_id,
          order_id: '',
        )))
        .paging,
    keyExtractor: (value) => value.id,
  ),
);
