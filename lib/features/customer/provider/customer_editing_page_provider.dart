import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/repository/address/address_repository.dart';

final address_repository_provider = Provider((ref) => AddressRepository(ref));
