import 'package:dabi_chat/features/chat/chat.dart';

mixin PostmanUtils {
  abstract final Ref ref;

  String getSenderId(String conversation_id) =>
      ref.read(chatProvider(conversation_id)).sender.id;

  User getReceiver(String conversation_id) =>
      ref.read(chatProvider(conversation_id)).receiver;

  MessengerNotifier getMessNotfier(String conversation_id) =>
      ref.read(messengerProvider(conversation_id).notifier);
}
