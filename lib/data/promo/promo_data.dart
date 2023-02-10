import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PromotionsDataSource extends DataSourceList<Promo> {
  PromotionsDataSource(Ref ref) : super(ref, 'promotions_ds', version: 1);

  @override
  Promo itemFromJson(dynamic json) => Promo.fromJson(json);

  @override
  Map<String, dynamic> itemToJson(Promo value) => value.toJson();

  @override
  String primaryKeyExtractor(Promo value) => '${value.id}';
}
