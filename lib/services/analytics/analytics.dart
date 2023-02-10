import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/widgets.dart';
import 'package:stack_trace/stack_trace.dart';

import 'logging.dart';

export './logging.dart';

void registerErrorMonitor() {
  FlutterError.onError = (FlutterErrorDetails details) {
    final trace =
        details.stack != null ? Chain.forTrace(details.stack!).terse : null;
    Logging('MAIN').error(
        subTag: 'on_error',
        message: [
          details.exception,
          if (trace != null) trace,
        ].join('\n'));
    FirebaseCrashlytics.instance.recordFlutterError(details);
  };
}
