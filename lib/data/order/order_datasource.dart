import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderDataSource extends DataSourceList<Order> {
  OrderDataSource(Ref ref, String conversation_id, {super.version})
      : super(ref, 'OrderDataSource_$conversation_id');

  @override
  Order itemFromJson(json) => Order.fromJson(json);

  @override
  Map<String, dynamic> itemToJson(Order value) => value.toJson();

  @override
  String primaryKeyExtractor(Order value) => value.id.toString();
}

class OrderDraftDataSource extends DataSourceList<OrderDraft> {
  OrderDraftDataSource(Ref ref, this.id, {super.version})
      : super(ref, 'OrderDraftDataSource');

  final String id;

  @override
  OrderDraft itemFromJson(json) => OrderDraft.fromJson(json);

  @override
  Map<String, dynamic> itemToJson(OrderDraft value) {
    final json = value.toJson();
    return json;
  }

  @override
  String primaryKeyExtractor(OrderDraft value) => id;
}
