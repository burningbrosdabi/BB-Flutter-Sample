import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/chat/chat_item_repository.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';

class _StatusProvider extends StateNotifier<Status> {
  final String conversation_id;
  final Ref ref;
  _StatusProvider({
    required this.conversation_id,
    required this.ref,
  }) : super(Status.UNKNOWN);

  set initValue(Status value) {
    state = value;
  }

  void markUnanswer() {
    if (state != Status.UNREAD) return;
    _setState(Status.UNANSWERED);
  }

  void markAnswered() {
    _setState(Status.ANSWERED);
  }

  void onReceivedMessage() {
    // if currrent current conversation is open mark as unanswered
    final route = ref.read(navigatorProvider).routes.last;
    route.maybeWhen(orElse: () {
      _setState(Status.UNREAD);
    }, chat: (params) {
      if (params.id == conversation_id) {
        _setState(Status.UNANSWERED);
      } else
        _setState(Status.UNREAD);
    });
  }

  void _setState(Status status) {
    if (state == status) return;
    state = status;
    ChatItemRepository(ref: ref).updateStatus(conversation_id, status);
  }
}

final status_provider =
    StateNotifierProvider.family<_StatusProvider, Status, String>(
  (ref, conversation_id) =>
      _StatusProvider(conversation_id: conversation_id, ref: ref),
);
