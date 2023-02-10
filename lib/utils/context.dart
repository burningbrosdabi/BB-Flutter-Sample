import 'package:flutter/material.dart';

extension ContextShortcut on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ButtonStyle elevatedButtonStyle({
    Color? backgroundColor,
  }) {
    return Theme.of(this).elevatedButtonTheme.style!.copyWith(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        );
  }

  ButtonStyle textButtonStyle({
    TextStyle? textStyle,
  }) {
    return Theme.of(this).textButtonTheme.style!.copyWith(
          textStyle: MaterialStateProperty.all(textStyle),
        );
  }
}
