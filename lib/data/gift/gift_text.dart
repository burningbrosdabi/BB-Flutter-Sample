import 'package:dabi_chat/data/data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GiftTextDataSource extends DataSourceList<String> {
  GiftTextDataSource(Ref ref) : super(ref, 'gift_text_ds_1');

  @override
  String itemFromJson(dynamic json) => json;

  @override
  String itemToJson(String value) => value;

  @override
  String primaryKeyExtractor(String value) => value;
}
