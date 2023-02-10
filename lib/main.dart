import 'dart:async';

import 'package:dabi_chat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'services/analytics/analytics.dart';
import 'services/navigation/navigation.dart';
import 'widget/theme/theme.dart';

void main() async {
  runZonedGuarded<Future<void>>(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await intializeLogger();
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
      );
      registerErrorMonitor();
      final appKey = GlobalKey();
      runApp(ProviderScope(
          child: App(
        key: appKey,
      )));
    },
    (error, stack) => FirebaseCrashlytics.instance
        .recordError(error, Chain.forTrace(stack).terse, fatal: true),
  );
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    registerLogExportEvent(ref);
    return MaterialApp.router(
      backButtonDispatcher: RootBackButtonDispatcher(),
      routeInformationParser: AppRouteInformationParser(),
      routerDelegate: AppRouterDelegate(ref: ref),
      theme: theme_data,
    );
  }
}
