import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';

class ProductRepository extends IRepository {
  ProductRepository({required super.ref})
      : super(log: Logging('ProductRepository'));

  Future<PaginationResponse<Product>> getProducts(
      {required int offset, String? q}) async {
    await Future.delayed(const Duration(seconds: 5));
    final response = await http.get('products/', queryParameters: {
      'offset': offset,
      'limit': 0x7fffffff,
      if (q != null) 'q': q,
    });
    return PaginationResponse.fromJson(
        response, (obj) => Product.fromJson(obj as Map<String, dynamic>));
  }
}
