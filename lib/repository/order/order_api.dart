import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/http/http_service.dart';

class OrderApi {
  OrderApi({required Http http}) : _http = http;

  final Http _http;

  Future<void> submit({required OrderSubmitDto payload}) async {
    final _payload = payload.copyWith(
        order_details: payload.order_details
            .where((element) => !element.is_delete)
            .toList());
    await _http.post('/orders/', data: _payload.toJson());
  }

  Future<PaginationResponse<Order>> paging(
      String conversation_id, int offset) async {
    final response = await _http.get('messengers/$conversation_id/orders/',
        queryParameters: {'offset': offset});

    return PaginationResponse.fromJson(
        response, (value) => Order.fromJson(value as Map<String, dynamic>));
  }

  Future<void> update(
      {required OrderPartialDto payload, required String order_id}) async {
    await _http.patch('orders/$order_id/', data: payload.toJson());
  }
}
