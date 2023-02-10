import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/features/splash/view/splash_page.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppRouterDelegate extends RouterDelegate<$Route>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final WidgetRef ref;

  AppRouterDelegate({required this.ref}) : super() {
    ref.read(navigatorProvider).addListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return MediaQuery(
      child: SplashPage(
        child: $LoaderOverlay(
          child: Center(
            child: Navigator(
              key: navigatorKey,
              pages: ref.read(navigatorProvider).pages,
              onPopPage: (route, result) {
                if (!route.didPop(result)) {
                  return false;
                }
                ref.read(navigatorProvider).pop(result: result);
                return true;
              },
            ),
          ),
        ),
      ),
      data: mediaQuery.copyWith(
          textScaleFactor: 1.0,
          padding: mediaQuery.padding.copyWith(
              bottom: mediaQuery.padding.bottom > 0
                  ? 20
                  : mediaQuery.padding.bottom)),
    );
  }

  @override
  $Route get currentConfiguration {
    return ref.read(navigatorProvider).routes.last;
  }

  @override
  Future<void> setNewRoutePath($Route configuration) async {
    ref.read(navigatorProvider).push(configuration);
  }

  @override
  final navigatorKey = GlobalKey<NavigatorState>();
}
