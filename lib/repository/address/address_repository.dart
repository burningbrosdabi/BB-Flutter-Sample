import 'package:dabi_chat/data/auth/address/address_datasource.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'address_datasource.dart';

class AddressRepository {
  AddressRepository(this.ref)
      : _remoteAddressDataSource = AddresssDataSource(ref),
        _provinceCacheDataSource = ProvinceCacheDataSource(ref),
        _districtCacheDataSource = DistrictCacheDataSource(ref),
        _wardCacheDataSource = WardCacheDataSource(ref);

  final Ref ref;
  final AddresssDataSource _remoteAddressDataSource;
  final ProvinceCacheDataSource _provinceCacheDataSource;
  final DistrictCacheDataSource _districtCacheDataSource;
  final WardCacheDataSource _wardCacheDataSource;
  final Logging logging = Logging('AddressRepository');

  Future<List<Address>> getProvinces() async {
    final log = logging.spawn('getProvinces');
    final cached = await _provinceCacheDataSource.get();
    if (cached != null) {
      log.info(message: 'done | return cache');
      return cached;
    }
    final data =
        await _remoteAddressDataSource.getAddress(AddressType.province());
    _provinceCacheDataSource.put(data.results as List<Address>);
    log.info(message: 'data.length: ${data.results.length}');
    return data.results as List<Address>;
  }

  Future<List<Address>> getDistrictsOrWards(int id, AddressType type) async {
    final log = logging.spawn('getDistrictsOrWards | $type | $id');
    try {
      assert(type == AddressType.district() || type == AddressType.ward());
      final cacheSource = type.maybeWhen(
          district: () => _districtCacheDataSource,
          ward: () => _wardCacheDataSource,
          orElse: () => throw Exception('invalid type'));
      final cached = await cacheSource.get();
      if (cached != null && cached.containsKey(id)) {
        log.info(message: 'done | return cache');
        return cached[id]!;
      }
      final data = await _remoteAddressDataSource.getAddress(type, id);
      final results = data.results as List<Address>;
      log.info(message: 'data.length: ${results.length}');
      await _districtCacheDataSource.put({id: results}, merged: true);
      log.info(message: 'cache saved');
      return results;
    } catch (e, trace) {
      log.error(error: e, trace: trace);
      rethrow;
    }
  }
}
