import 'dart:convert';

import 'package:dabi_chat/features/chat/provider/chat_manager_provider.dart';
import 'package:dabi_chat/features/chat/view/chat_page.dart';
import 'package:dabi_chat/features/status/provider/status_provider.dart';
import 'package:dabi_chat/model/chat/remote_conversation_message/remote_conversation_message.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'observer.dart';

export 'observer.dart';

class MessengerService {
  final assigning_message = 'Cuộc hội thoại mới vừa được giao cho bạn';
  final Logging log = Logging('MessengerService');
  final Map<String, List<ConversationObservation>> _observation_map = {};
  final List<AssigningObserver> _assigningObservers = [];
  final Ref ref;
  MessengerService(this.ref);

  void subscribe(ConversationObservation observation) {
    final id = observation.conversation_id;
    if (_observation_map.containsKey(id)) {
      _observation_map[id]!.add(observation);
    } else {
      _observation_map[id] = [observation];
    }
  }

  void unsubscribe(ConversationObservation observation) {
    final id = observation.conversation_id;
    if (!_observation_map.containsKey(id)) return;
    if (_observation_map[id]!.length <= 1)
      _observation_map.remove(id);
    else
      _observation_map[id]!.removeWhere((ob) => ob.conversation_id == id);
  }

  void subscribeAssignObserver(AssigningObserver observer) {
    _assigningObservers.add(observer);
  }

  void unsubscribeAssignObserver(AssigningObserver observer) {
    _assigningObservers.remove(observer);
  }

  void _notifyAsigningObserver(ChatPageParams params) {
    for (final observer in _assigningObservers) {
      observer.onAssigned(params);
    }
  }

  void onReceived(ChatPageParams params, RemoteMessage remoteMessage) {
    final id = params.id;
    log.info(
        subTag: 'onReceived | $id',
        message: 'remote_message_id: ${remoteMessage.messageId.toString()}');

    try {
      if (remoteMessage.notification?.body == assigning_message) {
        _notifyAsigningObserver(params);
        log.info(
            subTag: 'onReceived done | $id',
            message: 'received assigning message');
        return;
      }

      final conv = RemoteConversationMessage.fromJson(remoteMessage.data);
      log.info(subTag: 'onReceived | $id', message: 'conv.mid: ${conv.mid}');
      final message = conv.toConversation()?.toMessage();
      log.info(
          subTag: 'onReceived | $id', message: 'message.id: ${message?.id}');

      if (!_observation_map.containsKey(id)) {
        log.info(
            subTag: 'onReceived done | $id',
            message: 'non matching observation or message is null');
        return;
      }
      log.info(subTag: 'onReceived | $id', message: 'streaming to observer');
      for (final observer in _observation_map[id]!) {
        if (conv.is_delete) {
          observer.onDeleteMessage(conv.mid);
        } else if (message != null) {
          observer.onRecivedMessages(message);
          ref.read(status_provider(id).notifier).onReceivedMessage();
        }
      }
      ref.read(chat_manager_provider).trackActive(id);
    } catch (e) {
      log.error(
        subTag: 'onReceived failed | $id',
        message: json.encode(remoteMessage.data),
      );
      rethrow;
    }
  }
}

final messengerService = Provider((ref) => MessengerService(ref));
