export './conversation_model/conversation.dart';
export './participants/participants.dart';
export './message_metadata/custom_message_metadata.dart';
export './story/story.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class PagingMessagesRepsonse {
  final List<types.Message> messages;
  final String? paging;

  PagingMessagesRepsonse({
    required this.messages,
    required this.paging,
  });
}
