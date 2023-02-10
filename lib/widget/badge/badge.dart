import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class $Badge extends StatelessWidget {
  final Widget child;
  final bool showBadge;
  final BadgePosition? position;
  const $Badge(
      {required this.child, this.showBadge = false, this.position, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      showBadge: showBadge,
      elevation: 0,
      padding: const EdgeInsets.all(4),
      position: position ?? BadgePosition.topEnd(top: 0, end: 0),
      child: child,
    );
  }
}
