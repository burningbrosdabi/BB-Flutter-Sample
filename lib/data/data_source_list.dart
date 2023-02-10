import 'package:dabi_chat/model/model.dart';
import 'package:sembast/sembast.dart';
import 'package:dabi_chat/data/database.dart' as local;
import 'abstract_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class DataSourceList<T>
    implements IDataSourceActions<List<dynamic>, List<T>> {
  DataSourceList(Ref ref, String name, {int version = 0})
      : db = ref.read(local.databaseProvider)!,
        _store = stringMapStoreFactory.store("${name}_$version");

  final StoreRef _store;

  @override
  final Database db;

  String primaryKeyExtractor(T value);

  T itemFromJson(dynamic json);

  dynamic itemToJson(T value);

  @override
  Future<List<T>?> get({Finder? finder}) async {
    final snapshot = await _store.find(db, finder: finder);
    if (snapshot.isEmpty) return null;
    return _mapSnapshot(snapshot);
  }

  Future<T?> getByKey(String key) async {
    final data = await _store.record(key).get(db);
    if (data == null) return null;
    return itemFromJson(data);
  }

  List<T> _mapSnapshot(List<RecordSnapshot<dynamic, dynamic>> snapshot) {
    return snapshot.map((snap) {
      try {
        return itemFromJson(snap.value);
      } catch (e) {
        rethrow;
      }
    }).toList(growable: true);
  }

  @override
  Future<void> put(List<T> value, {bool merged = true}) async {
    await db.transaction((transaction) async {
      for (final item in value) {
        final key = primaryKeyExtractor(item);
        if (!merged) {
          final exists = await _store.record(key).exists(transaction);
          if (exists) continue;
        }
        await _store
            .record(key)
            .put(transaction, itemToJson(item), merge: merged);
      }
    });
  }

  Map<String, T> fromListToMap(List<T> value) {
    return value.asMap().map((key, value) => MapEntry(key.toString(), value));
  }

  @override
  List<T> fromJson(List<dynamic> json) {
    return json.map((e) {
      return itemFromJson(e);
    }).toList();
  }

  @override
  List<dynamic> parseJson(List<T> value) {
    return value.map((value) => itemToJson(value)).toList();
  }

  @override
  Future<void> deleteAt(String key) {
    return _store.record(key).delete(db);
  }

  @override
  Future<void> delete() async {
    await _store.delete(db);
  }

  Future<PaginationResponse<T>?> paging(
    int offset, {
    int limit = 10,
    SortOrder? order,
  }) async {
    return db.transaction((trans) async {
      final count = await _store.count(trans);
      final snapshot = await _store.find(
        trans,
        finder: Finder(
            offset: offset,
            limit: limit,
            sortOrders: [if (order != null) order]),
      );
      final results = _mapSnapshot(snapshot);

      if (count == 0 && results.isEmpty) return null;
      final has_next = count - results.length - offset > 0;
      return PaginationResponse(
          count: count, results: results, has_next: has_next);
    });
  }

  Future<dynamic> update(String key, Map<String, dynamic> value) {
    return _store.record(key).update(db, value);
  }
}

List<T> filterDuplicated<T>(Map<String, dynamic> params) {
  final source = params['source'] as List<T>;
  final children = params['children'] as List<T>;
  final primaryKeyExtractor =
      params['primaryKeyExtractor'] as dynamic Function(dynamic value);

  final source_map = {
    for (final e in source) primaryKeyExtractor(e): e,
  };

  final children_map = {
    for (final e in children) primaryKeyExtractor(e): e,
  };

  children_map.removeWhere((key, value) => source_map.containsKey(key));

  return children_map.values.toList();
}
