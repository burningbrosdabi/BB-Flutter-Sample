import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';

class FeedDataSource extends DataSourceList<Feed> {
  FeedDataSource(super.ref, super.name);

  @override
  Feed itemFromJson(dynamic json) {
    return Feed.fromJson(json);
  }

  @override
  Map<String, dynamic> itemToJson(Feed value) {
    return value.toJson();
  }

  @override
  String primaryKeyExtractor(Feed value) => value.id;
}
