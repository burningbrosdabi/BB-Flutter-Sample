import 'package:dabi_chat/data/gift/gift_text.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';

class GiftTextRepository extends IRepository {
  GiftTextRepository({required super.ref})
      : data_source = GiftTextDataSource(ref),
        super(log: Logging('GiftTextRepository'));

  void push(String item) {
    data_source.put([item]);
  }

  final GiftTextDataSource data_source;

  Future<List<String>?> get() => data_source.get();
}
