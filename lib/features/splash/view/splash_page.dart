import 'package:flutter/material.dart';
import 'package:dabi_chat/features/splash/widgets/splash_body.dart';

class SplashPage extends StatelessWidget {
  final Widget child;
  const SplashPage({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashBody(
      child: child,
    );
  }
}
