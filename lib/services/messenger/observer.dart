import 'package:dabi_chat/features/chat/view/chat_page_params.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class ConversationObservation {
  abstract String conversation_id;

  void onDeleteMessage(String conversation_id);

  void onRecivedMessages(types.Message message);
}

abstract class AssigningObserver {
  void onAssigned(ChatPageParams params);
}

abstract class MessageObservation {
  void onRecivedMessages(String conversation_id, List<types.Message> messages);
}
