import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/http/http.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddresssDataSource {
  AddresssDataSource(Ref ref) : http = ref.read(http_provider);

  final Http http;

  Future<PaginationResponse<Address>> getAddress(AddressType type,
      [int? id]) async {
    final response = await http.get(
        'address/${type.when(
          province: () => 'provinces',
          district: () => 'districts',
          ward: () => 'wards',
        )}',
        queryParameters: type.when(
          province: () => {'limit': 63},
          district: () => {
            'province_id': id,
            'limit': 100,
          },
          ward: () => {
            'district_id': id,
            'limit': 100,
          },
        ));
    return PaginationResponse.fromJson(
      response,
      (value) => Address.fromJson(value as Map<String, dynamic>),
    );
  }
}
