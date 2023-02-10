import 'package:dabi_chat/features/auth/widgets/auth_body.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:flutter/material.dart';

/// {@template auth_page}
/// A description for AuthPage
/// {@endtemplate}
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  static RouteSetting<void> route() {
    return RouteSetting(
      '/login',
      shouldBeAuth: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: const Scaffold(
        body: AuthBody(),
      ),
    );
  }
}
