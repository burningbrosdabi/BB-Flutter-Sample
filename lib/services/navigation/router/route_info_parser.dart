import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/navigation/routes/routes.dart';
import 'package:flutter/material.dart';

class AppRouteInformationParser extends RouteInformationParser<$Route> {
  final Logging log = Logging('AppRouteInformationParser');
  $Route? parseRoute(String path) {
    log.error(subTag: 'parseRoute', message: 'path: $path');
    try {
      $Route? route;
      final uri = Uri.parse(path);
      final uri_path = uri.pathSegments.first;
      if (uri_path == ChatPage.path) {
        final params = ChatPageParams.fromUrl(path);
        return $Route.chat(params);
      }
      return route;
    } catch (e) {
      log.error(
        subTag: 'parseRoute failed',
        message: ['url: $path', e.toString()].join('\n'),
      );
      return null;
    }
  }

  @override
  Future<$Route> parseRouteInformation(
      RouteInformation routeInformation) async {
    final route = parseRoute(routeInformation.location!);
    if (route == null) return $Route.home();
    return route;
  }

  @override
  RouteInformation? restoreRouteInformation($Route configuration) {
    return RouteInformation(location: configuration.setting.toPathUrl());
  }
}
