import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProvinceCacheDataSource extends DataSourceList<Address> {
  ProvinceCacheDataSource(Ref ref) : super(ref, 'provinces_datasource_1');

  @override
  Address itemFromJson(dynamic json) {
    return Address.fromJson(json);
  }

  @override
  Map<String, dynamic> itemToJson(Address value) {
    return value.toJson();
  }

  @override
  String primaryKeyExtractor(Address value) => '${value.id}';
}

abstract class AdressMapCacheDataSource
    extends DataSource<Map<int, List<Address>>> {
  AdressMapCacheDataSource(super.ref, super.name);

  @override
  Map<int, List<Address>> fromJson(Map<String, dynamic> json) {
    final map = <int, List<Address>>{};
    for (final entry in json.entries) {
      if (entry.value is! List) continue;
      map[int.parse(entry.key)] =
          const Address(id: 0, name: '').fromListJson(List.from(entry.value));
    }
    return map;
  }

  @override
  Map<String, dynamic> parseJson(Map<int, List<Address>> value) {
    return value.map((key, value) {
      return MapEntry('$key', value.map((e) => e.toJson()).toList());
    });
  }
}

class DistrictCacheDataSource extends AdressMapCacheDataSource {
  DistrictCacheDataSource(Ref ref) : super(ref, 'district_datasource');
}

class WardCacheDataSource extends AdressMapCacheDataSource {
  WardCacheDataSource(Ref ref) : super(ref, 'ward_datasource');
}
