import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';

class QuickReplyDataSource extends DataSourceList<QuickReply> {
  QuickReplyDataSource(super.ref, super.name, {super.version});

  @override
  QuickReply itemFromJson(dynamic json) => QuickReply.fromJson(json);

  @override
  Map<String, dynamic> itemToJson(QuickReply value) => value.toJson();

  @override
  String primaryKeyExtractor(QuickReply value) => '${value.id}';
}
