import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/messenger/messenger_service.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export '../messenger/observer.dart';

@visibleForTesting
class MessagingService {
  // ignore: close_sinks
  final List<AssigningObserver> _assignignSubscriber = [];
  final log = Logging('MessagingService');
  final Ref ref;
  final FirebaseMessaging messaging;

  MessagingService({
    required this.ref,
    @visibleForTesting FirebaseMessaging? messaging,
  }) : messaging = messaging ?? FirebaseMessaging.instance;

  Future<void> requestPermission() async {
    final settings = await messaging.requestPermission();
    if (settings.authorizationStatus != AuthorizationStatus.authorized) return;
  }

  String? getRoute(RemoteMessage remoteMessage) {
    final route = pick(remoteMessage.data, 'route').asStringOrNull();
    if (route == null) return null;
    return route;
  }

  Future<String?> getToken() => messaging.getToken();

  void init() async {
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      // final badgeSupported = await FlutterAppBadger.isAppBadgeSupported();
      // if (badgeSupported) {
      //   FlutterAppBadger.removeBadge();
      // }
      onMessageOpenedApp(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp
        .listen((message) => onMessageOpenedApp(message));

    FirebaseMessaging.onMessage.listen(onMessage);

    FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
  }

  void onMessage(RemoteMessage message) {
    final messageId = message.messageId.toString();
    log.info(
      subTag: 'onMessage | $messageId',
      message: messageId,
    );

    final path = pick(message.data, 'route').asStringOrNull();
    if (path == null) {
      log.info(
        subTag: 'onMessage done | $messageId',
        message: 'path is null',
      );
      return;
    }
  }

  // void _onRecievedRoute(String path, RemoteMessage message) {
  //   final messageId = message.messageId.toString();
  //   log.info(subTag: 'onRecievedRoute | $messageId');
  //   final route = AppRouteInformationParser().parseRoute(path);
  //   if (route == null) {
  //     log.info(
  //         subTag: 'onRecievedRoute done | $messageId',
  //         message: 'route is null');
  //     return;
  //   }
  //   if (route is ChatRoute) {
  //     log.info(subTag: 'onRecievedRoute | $messageId');
  //     ref.read(messengerService).onReceived(route.params, message);
  //   }
  // }

  void onMessageOpenedApp(RemoteMessage message) {
    final messageId = message.messageId.toString();
    log.info(subTag: 'onMessageOpenedApp | $messageId');
    final path = pick(message.data, 'route').asStringOrNull();
    if (path == null) {
      log.info(
          subTag: 'onMessageOpenedApp done | $messageId',
          message: 'path is null');
      return;
    }
  }

  void addAssigningObserver(AssigningObserver observer) {
    _assignignSubscriber.add(observer);
  }

  void removeAssigningObserver(AssigningObserver observer) {
    _assignignSubscriber.removeWhere((element) => element == observer);
  }
}

final messagingProvider =
    Provider<MessagingService>((ref) => MessagingService(ref: ref));

Future<void> onBackgroundMessage(RemoteMessage remote_message) async {}
