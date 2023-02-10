import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoteDatasource extends DataSource<Map<int, MessengerNote>> {
  NoteDatasource(Ref ref, String id) : super(ref, "note_data_source_$id");

  @override
  Map<int, MessengerNote> fromJson(Map<String, dynamic> json) {
    final res = <int, MessengerNote>{};
    for (final entries in json.entries) {
      final id = int.tryParse(entries.key);
      if (id == null) continue;

      final note = MessengerNote.fromJson(entries.value);

      res[id] = note;
    }
    return res;
  }

  @override
  Map<String, dynamic> parseJson(Map<int, MessengerNote> value) {
    return value.map((key, value) => MapEntry('$key', value.toJson()));
  }
}
