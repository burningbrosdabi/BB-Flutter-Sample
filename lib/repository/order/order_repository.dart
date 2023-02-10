import 'package:dabi_chat/data/order/order_datasource.dart';
import 'package:dabi_chat/features/order/model/order_args.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/http/http.dart';

import 'order_api.dart';

class OrderRepository extends IRepository {
  OrderRepository({
    required super.ref,
    required this.args,
  })  : _orderAPi = OrderApi(http: ref.read(http_provider)),
        _orderDataSource = OrderDataSource(ref, args.order_id),
        super(log: Logging('OrderRepository')) {
    _orderDraftDataSource = OrderDraftDataSource(ref, args.key, version: 4);
  }

  final OrderApi _orderAPi;
  final OrderDataSource _orderDataSource;
  late final OrderDraftDataSource _orderDraftDataSource;
  final OrderArgs args;

  Future<void> submit({required OrderSubmitDto payload}) =>
      _orderAPi.submit(payload: payload);

  Future<PaginationResponse<Order>> paging(int offset, [void filter]) async {
    try {
      final response = await _orderAPi.paging(args.conversation_id, offset);
      await _orderDataSource.put(response.results as List<Order>);

      return response;
    } catch (e) {
      final cached = await _orderDataSource.paging(offset);
      if (cached == null) rethrow;
      return cached;
    }
  }

  Future<OrderDraft?> getDraft() async {
    final order = await _orderDraftDataSource.getByKey(args.key);
    return order;
  }

  Future<void> saveDraft(OrderDraft order) {
    try {
      return _orderDraftDataSource.put([order]);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeDraft() async {
    final result = await _orderDraftDataSource.deleteAt(args.key);
    return result;
  }

  Future<void> update(
          {required OrderPartialDto payload, required String order_id}) =>
      _orderAPi.update(payload: payload, order_id: order_id);
}
