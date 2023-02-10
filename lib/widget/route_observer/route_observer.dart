import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouteAwareWidget extends ConsumerStatefulWidget {
  final Widget child;
  final String conversation_id;
  final RouteObserver<Route> observer;
  final Function() didPush;
  final Function() didPop;

  const RouteAwareWidget({
    super.key,
    required this.observer,
    required this.child,
    required this.conversation_id,
    required this.didPush,
    required this.didPop,
  });

  @override
  ConsumerState<RouteAwareWidget> createState() => RouteAwareWidgetState();
}

class RouteAwareWidgetState extends ConsumerState<RouteAwareWidget>
    with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.observer.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    widget.observer.unsubscribe(this);
    super.dispose();
  }

  @override
  // Called when the current route has been pushed.
  void didPush() {
    widget.didPush();
  }

  @override
  // Called when the current route has been pushed.
  void didPop() {
    widget.didPop();
  }

  // @override
  // // Called when the top route has been popped off, and the current route shows up.
  // void didPopNext() {
  //   widget.onLastRouteChanged();
  // }

  @override
  Widget build(BuildContext context) => widget.child;
}
