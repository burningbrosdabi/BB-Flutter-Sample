import 'package:dabi_chat/data/database.dart' as local;
import 'package:dabi_chat/features/home/home.dart';
import 'package:sembast/sembast.dart';

import 'abstract_datasource.dart';
export 'data_source_list.dart';

abstract class DataSource<T>
    implements IDataSourceActions<Map<String, dynamic>, T> {
  DataSource(Ref ref, String name, {int version = 0})
      : recordRef =
            stringMapStoreFactory.store('${name}_v.$version').record('main'),
        db = ref.read(local.databaseProvider)!;

  final RecordRef<String, dynamic> recordRef;

  Future<void> push(dynamic item) async {
    return Future.value();
  }

  @override
  final Database db;

  @override
  Future<void> deleteAt(dynamic key) async {
    await recordRef.update(db, {key: FieldValue.delete});
  }

  @override
  Future<T?> get() async {
    final map = await recordRef.get(db);
    if (map == null) return null;
    return fromJson(map);
  }

  @override
  Future<void> delete() async {
    await recordRef.delete(db);
  }

  dynamic getPath(String path) async {
    final snap = await recordRef.getSnapshot(db);
    return snap?[path];
  }

  @override
  Future<void> put(T value, {bool merged = false}) async {
    await recordRef.put(db, parseJson(value), merge: merged);
  }
}
