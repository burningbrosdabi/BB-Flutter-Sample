import 'package:dabi_chat/data/data_source.dart';

class ReplyIdMapDataSource extends DataSource<Map<String, String>> {
  ReplyIdMapDataSource(super.ref, super.name);

  @override
  Map<String, String> fromJson(Map<String, dynamic> json) {
    return json.map((key, value) => MapEntry(key, value.toString()));
  }

  @override
  Map<String, dynamic> parseJson(Map<String, String> value) => value;
}
