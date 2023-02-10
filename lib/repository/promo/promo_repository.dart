import 'package:dabi_chat/data/promo/promo_data.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/utils.dart';

class PromotionsRepository extends IRepository
    with CachingStrategies<List<Promo>> {
  PromotionsRepository({required super.ref})
      : data_source = PromotionsDataSource(ref),
        super(
          log: Logging('PromotionsRepository'),
        );

  final PromotionsDataSource data_source;

  Future<List<Promo>> _getAllPromo() async {
    final response = await fetchAll<Promo>(fetch: _getPromo);
    return response.results as List<Promo>;
  }

  Future<PaginationResponse<Promo>> _getPromo(int limit) async {
    final response =
        await http.get('promotions/', queryParameters: {'limit': limit});
    return PaginationResponse.fromJson(
        response, (obj) => Promo.fromJson(obj as Map<String, dynamic>));
  }

  Future<List<Promo>> getPromotions() {
    return cacheFirst(_getAllPromo);
  }

  @override
  Future<List<Promo>?> get() => data_source.get();

  @override
  Future<void> save(List<Promo> value) => data_source.put(value);
}
