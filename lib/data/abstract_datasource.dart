import 'package:sembast/sembast.dart';

abstract class IDataSourceActions<S, T> {
  abstract final Database db;

  S parseJson(T value);

  T fromJson(S json);

  Future<T?> get();

  Future<void> put(T value, {bool merged = false});

  Future<void> delete();

  Future<void> deleteAt(String key);
}
