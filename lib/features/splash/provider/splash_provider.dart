import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:dabi_chat/data/database.dart';
import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/services/messaging/messaging.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

final initializationFuture = FutureProvider.autoDispose<void>((ref) async {
  try {
    final dbProviderNotifier = ref.watch(databaseProvider.notifier);
    await dbProviderNotifier.initialize();
    await AppTrackingTransparency.requestTrackingAuthorization();
    await ref.read(authProvider).checkCachedAuthData();
  } finally {
    FlutterNativeSplash.remove();
    ref.read(messagingProvider).requestPermission();
  }
});
