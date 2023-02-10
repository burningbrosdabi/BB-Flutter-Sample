import 'package:dabi_chat/services/http/config/config_builder.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:dio/dio.dart';

class SlackRepository {
  final http = Http(configBuilder: SlackConfigBuilder());

  FormData generateForm(Map<String, dynamic> form) {
    return FormData.fromMap({
      'token': '<token>',
      ...form,
    });
  }

  Future<void> upload({required String file_path}) async {
    final file = await MultipartFile.fromFile(file_path);
    final form = generateForm({'file': file, 'channels': 'product_sentry_log'});
    await http.post('files.upload', data: form);
  }
}
