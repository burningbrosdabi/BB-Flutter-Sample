import 'dart:async';

import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';

class ChatManager {
  ChatManager(this.ref) {
    _timer = Timer.periodic(_duration, (timer) {
      _checkInactiveChat();
    });
  }

  final _duration = const Duration(minutes: 10);
  late Timer _timer;
  final _logging = Logging('ChatManager');

  final Ref ref;
  final Map<String, DateTime> _chat_tracking_map = {};

  void _invalidate(String id) {
    final log = _logging.spawn('_invalidate: $id');
    try {
      final params = ref.read(chatProvider(id)).params;
      ref.invalidate(chatInitializeFuture(params));
      ref.invalidate(chatProvider(id));
      ref.invalidate(messengerProvider(id));
    } catch (e, trace) {
      log.error(message: 'failed to invalidate', error: e, trace: trace);
    }
  }

  void _checkInactiveChat() {
    final log = _logging.spawn('_checkInactiveChat');
    final removed_keys = <String>[];
    for (final key in _chat_tracking_map.keys) {
      final time = _chat_tracking_map[key]!;
      final duration = DateTime.now().difference(time);
      if (duration > _duration) {
        log.info(message: '${key}_last_active: ${time.toString()}');
        final last_route = ref.read(navigatorProvider).routes.last;
        // if currently open this chat screen -> skip
        if (last_route is ChatRoute) {
          final last_route_id =
              (last_route.setting.params as ChatPageParams).id;
          if (last_route_id == key) continue;
        }
        _invalidate(key);
        removed_keys.add(key);
      }
    }
    for (final key in removed_keys) {
      _chat_tracking_map.remove(key);
    }
  }

  void trackActive(String id) {
    _logging.info(subTag: 'trackActive: $id');
    _chat_tracking_map[id] = DateTime.now();
  }

  void deactivate() {
    _logging.info(subTag: 'deactivate');
    _timer.cancel();
  }
}

final chat_manager_provider = Provider((ref) {
  final provider = ChatManager(ref);
  ref.onDispose(provider.deactivate);
  return provider;
});
