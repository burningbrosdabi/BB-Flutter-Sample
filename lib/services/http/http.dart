import 'config/config.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'config/config.dart';

final http_provider = Provider((ref) {
  return Http(configBuilder: BaseHttpConfigBuilder(ref: ref));
});
