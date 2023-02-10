import 'dart:async';
import 'dart:convert';

import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/features/staff/provider/working_status_provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/messenger/messenger_service.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:quiver/core.dart';

class MessengerObserverProvider {
  MessengerObserverProvider(this.ref);

  final Ref ref;
  Map<String, StreamSubscription> conversation_sub = {};
  StreamSubscription? user_conversation_sub;
  final _logging = Logging('RealtimeMessengerService');
  DatabaseReference? db_ref;

  void subscribe(int user_id) async {
    db_ref = FirebaseDatabase.instance.ref('$user_id');
    _logging.spawn('subsribe | user_id: $user_id');
    user_conversation_sub = db_ref!.onValue.listen((event) {
      if (db_ref == null) return;
      final log = _logging.spawn('onValue.listen');
      if (event.snapshot.value == null) return;
      final value = Map<String, dynamic>.from(
          event.snapshot.value as Map<dynamic, dynamic>);
      final keys = value.keys.toList();
      for (final key in keys) {
        if (conversation_sub.containsKey(key)) continue;
        log.info(message: 'streaming conversation: $key');
        conversation_sub[key] = db_ref!.child(key).onValue.listen((event) {
          _onReceivedMessage(json.decode(json.encode(event.snapshot.value)));
        });
      }

      final unexist_keys =
          conversation_sub.keys.where((key) => !keys.contains(key));

      for (final key in unexist_keys) {
        log.info(message: 'remove key: $key');
        final subscription = conversation_sub.remove(key);
        subscription?.cancel();
      }
    });
  }

  void _onReceivedMessage(Map<String, dynamic> message) {
    final remote_message = RemoteMessage.fromMap(message);
    final path = pick(remote_message.data, 'route').asStringOrNull();
    final log =
        _logging.spawn('onReceivedMessage done | ${remote_message.messageId}');
    if (path == null) {
      log.info(message: 'path is null');
      return;
    }
    final route = AppRouteInformationParser().parseRoute(path);
    if (route == null) {
      log.info(message: 'route is null');
      return;
    }
    if (route is ChatRoute) {
      log.info(message: 'done');
      ref.read(messengerService).onReceived(route.params, remote_message);
    }
  }

  void unsubscribe() {
    final log = _logging.spawn('unsubscribe');
    user_conversation_sub?.cancel();
    for (final key in conversation_sub.keys) {
      log.info(message: 'remove $key');
      conversation_sub[key]?.cancel();
    }
    conversation_sub = {};
    db_ref?.remove();
  }
}

final messenger_observer_provider = Provider((ref) {
  final provider = MessengerObserverProvider(ref);
  final working_status_sub =
      ref.listen<AsyncValue<WorkingStatus>?>(working_status, (_, next) {
    if (Optional.fromNullable(next?.hasValue).or(false)) {
      next!.value?.when(active: () {
        final id = ref.read(user_provider)?.pk;
        if (id == null) return;
        provider.subscribe(id);
      }, away: () {
        provider.unsubscribe();
      });
    }
  });

  ref.onDispose(() {
    working_status_sub.close();
  });
  return provider;
});
