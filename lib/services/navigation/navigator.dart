import 'dart:async';
import 'dart:collection';

import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/services/navigation/page_stack.dart';
import 'package:dabi_chat/services/navigation/routes/routes.dart';
import 'package:flutter/material.dart';

class Navigator extends ChangeNotifier {
  Navigator({
    @visibleForTesting Logging? log,
  }) : log = log ?? Logging('Navigator');

  final Logging log;

  final PageStack stack = PageStack();

  final Map<int, Completer<Object?>> _routeCompleterMap = {};

  UnmodifiableListView<Page> get pages => UnmodifiableListView(stack.pages);

  UnmodifiableListView<$Route> get routes => UnmodifiableListView(stack.routes);

  Future<Object?> push($Route route, {int replace = 0}) async {
    final path = route.setting.toPathUrl();
    log.info(subTag: 'push $path', message: 'replace: $replace');
    final shouldNotify = await stack.push(route, replace);
    if (!shouldNotify) {
      log.info(subTag: 'push failed $path');
      return null;
    }
    notifyListeners();

    final completer = Completer<Object?>();

    _routeCompleterMap[route.setting.id] = completer;

    return completer.future;
  }

  Future<void> _pop({
    PopOptions? options,
    Object? result,
  }) async {
    final ids = await stack.pop(count: options?.count ?? 1);

    for (final id in ids) {
      if (_routeCompleterMap.containsKey(id)) {
        final completer = _routeCompleterMap[id]!;
        if (completer.isCompleted) return;
        completer.complete(result);
      }
    }

    // _routes.removeRange(count, end);
  }

  void pop({Object? result, PopOptions? options}) {
    log.info(subTag: 'pop', message: 'count: ${options?.count ?? 0}');
    _pop(options: options, result: result);
    notifyListeners();
  }
}

class PopOptions {
  final int? count;

  PopOptions({this.count});
}
