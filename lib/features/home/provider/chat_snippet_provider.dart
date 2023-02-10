import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/messenger/messenger_service.dart';

class ChatSnippetState extends StateNotifier<String>
    with ConversationObservation {
  ChatSnippetState({required this.ref, required this.conversation_id})
      : super('');

  final Ref ref;
  @override
  String conversation_id;

  void setFromChatItem(ChatItem item) {
    state = getSnippetFromChat(item);
  }

  void setFromMessage(Message message) {
    state = getSnippetFromMessage(message);
  }

  String getSnippetFromChat(ChatItem item) {
    late ChatSnippet snippet;
    if (item.attachments != null) {
      if (item.attachments!.length > 1) {
        snippet = ChatSnippet.attachments(item.attachments!.length);
      } else {
        snippet = item.attachments!.first.when(
          image: (_, __) => const ChatSnippet.image(),
          video: (_) => const ChatSnippet.video(),
        );
      }
    } else if (item.message != null) {
      snippet = ChatSnippet.text(item.message!);
    } else
      snippet = ChatSnippet();
    return snippet.getText(item.is_last_sent_from_page);
  }

  String getSnippetFromMessage(Message message, {bool? is_mine}) {
    late ChatSnippet snippet;
    switch (message.type) {
      case MessageType.text:
        snippet = ChatSnippet.text((message as TextMessage).text);
        break;
      case MessageType.image:
        snippet = const ChatSnippet.image();
        break;
      case MessageType.custom:
        final metadata = message.metadata == null
            ? null
            : MessageMetadata.fromJson(message.metadata!);
        if (metadata == null) break;
        snippet = metadata.when<ChatSnippet>(
          (_, __) => const ChatSnippet.text(''),
          video: (_, __, ___) => const ChatSnippet.video(),
          image: (_, __, ___) => const ChatSnippet.image(),
          attachments: (atts, __, ___) => ChatSnippet.attachments(atts.length),
          share: (_, is_like_sticker, __, ___) =>
              ChatSnippet.share(is_like_sticker),
          story: (url, text, title, error, reply_to) =>
              const ChatSnippet.story(),
          owner_request: (MeaningfulException? error, String? reply_to) {
            return const ChatSnippet.text(
                'Cuộc hội thoại đang được xử lý trên Business Suite.');
          },
        );
        break;
      default:
        snippet = ChatSnippet();
    }
    return snippet.getText(
      is_mine ??
          (message.author.id ==
              ref.read(chatProvider(conversation_id)).receiver.id),
    );
  }

  @override
  void onDeleteMessage(String conversation_id) {}

  @override
  void onRecivedMessages(Message message) {
    final chat_initialized =
        ref.read(chatProvider(conversation_id)).initialized;
    if (!chat_initialized)
      state = getSnippetFromMessage(message, is_mine: false);
    else {
      state = getSnippetFromMessage(message);
    }
  }
}

final chat_snippet =
    StateNotifierProvider.family<ChatSnippetState, String, String>(
        (ref, conversation_id) {
  final prov = ChatSnippetState(ref: ref, conversation_id: conversation_id);
  ref.watch(messengerService).subscribe(prov);

  ref.onDispose(() => ref.watch(messengerService).unsubscribe(prov));
  return prov;
});
