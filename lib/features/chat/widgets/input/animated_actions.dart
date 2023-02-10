import 'package:flutter/material.dart';

class AnimatedActions extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;
  const AnimatedActions(
      {required this.animation, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axis: Axis.horizontal,
      sizeFactor: animation,
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
