import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';

class ChatLogRepository extends IRepository {
  ChatLogRepository({required super.ref})
      : super(log: Logging('ChatLogRepository'));

  Future<void> deliveredLog({
    required String conversation_id,
    required Map<String, dynamic> payload,
    required String message_id,
  }) async {
    http.post('messengers/$conversation_id/logs/', data: {
      'payload': payload,
      'message_id': message_id,
    }).catchError((e) {});
  }
}
