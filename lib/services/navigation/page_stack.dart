import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/features/comment/comment.dart';
import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/features/home/view/home_page.dart';
import 'package:dabi_chat/features/home/view/setting_page.dart';
import 'package:dabi_chat/features/order/order.dart';
import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/features/redeem/redeem.dart';
import 'package:dabi_chat/services/navigation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PageStack {
  PageStack() {
    _routes.add($Route.home());
    _pages.add(const MaterialPage(
        key: ValueKey('/'), child: CupertinoScaffold(body: HomePage())));
  }

  final List<$Route> _routes = [];

  final List<Page> _pages = [];

  int pageRemovedCount = 1;

  int get _lastIndex => _routes.length - 1;

  UnmodifiableListView<Page> get pages => UnmodifiableListView(_pages);

  UnmodifiableListView<$Route> get routes => UnmodifiableListView(_routes);

  Future<Page?> getPageFromRoute($Route route) async {
    final bool fullscreenDialog =
        route.maybeWhen(auth: () => true, orElse: () => false);
    final Widget Function() builder = route.when(
      home: () => () => const HomePage(),
      auth: () => () => const AuthPage(),
      chat: (ChatPageParams params) => () => ChatPage(params),
      redeem: () => () => const RedeemPage(),
      setting: () => () => const SettingPage(),
      customer: (conversation_id) =>
          () => CustomerPage(conversation_id: conversation_id),
      comment: (String comment_id) =>
          () => CommentDetailPage(comment_id: comment_id),
      order: (String conversation_id) =>
          () => OrderHistoryPage(conversation_id: conversation_id),
      product: (String conversation_id) =>
          () => ProductSharePage(conversation_id: conversation_id),
      productEdit: (String conversation_id) =>
          () => ProductShareEditPage(conversation_id: conversation_id),
    );

    final child = await buildPageAsync(builder);

    return MaterialPage(
        key: ValueKey(getRouteId(route)),
        child: CupertinoScaffold(body: child),
        fullscreenDialog: fullscreenDialog);
  }

  Future<Widget> buildPageAsync(Widget Function() builder) async {
    return Future.microtask(() {
      return builder();
    });
  }

  int getRouteId($Route route) => route.setting.id;

  String toPathUrl($Route route) => route.setting.toPathUrl();

  int maxPage = 11;

  bool _checkDuplicate($Route route, [int replace = 0]) {
    final routePath = toPathUrl(route);
    if (toPathUrl(_routes.last) == routePath) return true;
    // if next url has the same url with previous url
    if (_routes.length >= 2) {
      final mostLast = routes[routes.length - 2];
      if (toPathUrl(mostLast) == routePath && replace == 0) {
        final page = _pages[routes.length - 2];
        pop(count: 2);
        _routes.add(route);
        _pages.add(page);
        return true;
      }
    }
    return false;
  }

  FutureOr<bool> push($Route route, [int replace = 0]) async {
    pageRemovedCount++;
    if (_routes.isNotEmpty) {
      final duplicated = _checkDuplicate(route, replace);
      if (duplicated) return false;
    }
    if (replace > 0 && _routes.length > replace) {
      pop(count: replace);
    }
    final page = await getPageFromRoute(route);
    if (page == null) return false;
    _routes.add(route);
    _pages.add(page);
    if (_pages.length > maxPage) {
      _pages.removeAt(1);
      //-----------------
      _routes.removeAt(1);

      imageCache.clear();
      imageCache.clearLiveImages();
    }
    return true;
  }

  int clampToRootIndex(List list, int count) {
    final lastIndex = list.length - 1;
    return (max(lastIndex - count, 0) + 1).clamp(1, lastIndex);
  }

  Future<List<int>> pop({int count = 1}) async {
    if (_routes.length == 1) return [];

    final _count = clampToRootIndex(_routes, count);

    final end = _lastIndex + 1;
    final ids = _routes
        .getRange(_count, end)
        .map((route) => getRouteId(route))
        .toList();

    _routes.removeRange(_count, end);
    //------------------------------
    _pages.removeRange(_count, end);
    // _pages.removeRange(clampToRootIndex(_pages, count), _pages.length);

    // if (_pages.length == 1 && _routes.length != 1) {
    //   final page = await getPageFromRoute(_routes.last);
    //   if (page != null) _pages.add(page);
    // }
    return ids;
  }
}
