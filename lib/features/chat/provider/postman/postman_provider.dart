import 'package:collection/collection.dart';
import 'package:dabi_chat/features/chat/provider/postman/exception.dart';
import 'package:dabi_chat/features/chat/provider/postman/mixin.dart';
import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/features/status/provider/status_provider.dart';
import 'package:dabi_chat/model/chat/conversation/attachment/attachment.dart';
import 'package:dabi_chat/model/model.dart' hide Status, User;
import 'package:dabi_chat/repository/chat/messenger/types.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:nanoid/nanoid.dart';
import 'package:quiver/iterables.dart';
import 'package:tuple/tuple.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

part 'delivery_operation.dart';

class Postman with PostmanException, PostmanUtils {
  final Logging log = Logging('Postman');
  final Map<String, Future<void> Function()> _retry_map = {};
  final String conversation_id;

  @override
  Ref ref;

  late final DeliveryOperation deli_op;

  Postman({
    required this.ref,
    required this.conversation_id,
  }) {
    deli_op = DeliveryOperation(
      conversation_id: conversation_id,
      ref: ref,
    );
  }

  void sendTextMessage({required String message}) async {}

  Future<void> sendAttachmentMessage({required List<String> urls}) async {}

  void retryWrapper({
    required Future<DeliveredResponse> Function() func,
    required Message message,
  }) async {}

  Future<void> markSeen() async {}

  Future<void> updateTypingAction({required SenderAction action}) async {}

  void retrySendMessage({required Message message}) async {}

  Future<void> uploadAttachments({required List<AssetEntity> assets}) async {}

  void dispose() {}
}

final postmanProvider =
    Provider.family<Postman, String>((ref, conversation_id) {
  final postman = Postman(ref: ref, conversation_id: conversation_id);
  ref.onDispose(() {
    postman.dispose();
  });
  return postman;
});
