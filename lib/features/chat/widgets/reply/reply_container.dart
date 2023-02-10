import 'package:flutter/material.dart';

class ReplyContainer extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final BoxDecoration decoration;
  final Widget child;
  const ReplyContainer(
      {required this.padding,
      required this.decoration,
      required this.child,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Container(
        margin: const EdgeInsets.only(bottom: 4),
        padding: padding,
        decoration: decoration,
        child: child,
      ),
    );
  }
}
