import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';

class CustomerRepository extends IRepository {
  CustomerRepository({required super.ref})
      : super(log: Logging('CustomerRepository'));

  Future<Customer> getCustomer(String conversation_id) async {
    log.info(subTag: 'getCustomer');
    final response = await http.get('messengers/$conversation_id/');
    return CustomerDto.fromJson(response).value;
  }

  Future<Customer> update(Customer customer) async {
    log.info(subTag: 'update');
    final data = customer.toJson();
    final response = await http.patch('/customers/${customer.pk}/', data: data);
    return Customer.fromJson(response);
  }
}
