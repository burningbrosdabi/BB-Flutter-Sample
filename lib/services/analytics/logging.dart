import 'dart:io';

import 'package:dabi_chat/repository/slack/slack.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_logs/flutter_logs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stack_trace/stack_trace.dart';

Future<void> intializeLogger() async {
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(kReleaseMode);
  await FlutterLogs.initLogs(
    logLevelsEnabled: [
      LogLevel.INFO,
      LogLevel.WARNING,
      LogLevel.ERROR,
      LogLevel.SEVERE
    ],
    timeStampFormat: TimeStampFormat.TIME_FORMAT_READABLE,
    directoryStructure: DirectoryStructure.FOR_DATE,
    logTypesEnabled: ["device", "network", "errors"],
    logFileExtension: LogFileExtension.LOG,
    logsWriteDirectoryName: "dabi_chat",
    logsExportDirectoryName: "dabi_chat/exported",
    debugFileOperations: true,
    isDebuggable: true,
  );
}

class _LogInstance {
  String name;
  String tag;
  late Logging _log;
  _LogInstance(this.name, this.tag) {
    _log = Logging(name);
  }

  void info({String message = ''}) {
    _log.info(subTag: tag, message: message);
  }

  void error({String message = '', Object? error, StackTrace? trace}) {
    _log.error(subTag: tag, message: message, error: error, trace: trace);
  }
}

class Logging {
  final String name;
  Logging(this.name);

  _LogInstance spawn(String subTag) {
    final log = _LogInstance(name, subTag);
    log.info();
    return log;
  }

  void info({
    required String subTag,
    String message = '',
  }) {
    _log(LogLevel.INFO, subTag, message);
  }

  void warning({
    required String subTag,
    String message = '',
  }) {
    _log(LogLevel.WARNING, subTag, message);
  }

  void error(
      {required String subTag,
      String message = '',
      Object? error,
      StackTrace? trace}) {
    _log(
        LogLevel.ERROR,
        subTag,
        [
          message,
          if (error != null) error.toString(),
          if (trace != null) Trace.from(trace).terse
        ].join('\n'));
  }

  void _log(
    LogLevel level,
    String subTag,
    String message,
  ) {
    final logMessage = [name, subTag, message].join(' | ');
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      debugPrint(logMessage);
      return;
    }
    if (level != LogLevel.ERROR) FirebaseCrashlytics.instance.log(logMessage);
    switch (level) {
      case LogLevel.WARNING:
        FlutterLogs.logWarn(name, subTag, message);
        break;
      case LogLevel.ERROR:
        FlutterLogs.logError(name, subTag, message);
        break;
      case LogLevel.INFO:
      default:
        FlutterLogs.logInfo(name, subTag, message);
        break;
    }
  }
}

void registerLogExportEvent(WidgetRef ref) {
  FlutterLogs.channel.setMethodCallHandler((call) async {
    if (call.method != 'logsExported') return;
    ref.context.loaderOverlay.show();
    try {
      final zipName = call.arguments.toString();

      Directory? externalDirectory;

      if (Platform.isIOS) {
        externalDirectory = await getApplicationDocumentsDirectory();
      } else {
        externalDirectory = await getExternalStorageDirectory();
      }

      if (externalDirectory == null) return;

      SlackRepository().upload(file_path: "${externalDirectory.path}/$zipName");
      ScaffoldMessenger.of(ref.context)
          .showSnackBar(const SnackBar(content: Text('Gửi thành công')));
    } catch (e) {
      ScaffoldMessenger.of(ref.context)
          .showSnackBar(const SnackBar(content: Text('Gửi thất bại')));
    } finally {
      ref.context.loaderOverlay.hide();
    }
  });
}

void exportLogs() {
  FlutterLogs.exportLogs(exportType: ExportType.LAST_24_HOURS);
}
