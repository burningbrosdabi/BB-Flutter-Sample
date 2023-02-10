import 'package:dabi_chat/widget/theme/color.dart';
import 'package:dabi_chat/widget/theme/text.dart';
import 'package:flutter/material.dart';
import 'button.dart';

export './color.dart';

final _base_theme = ThemeData.light();

final theme_data = ThemeData(
  errorColor: error_color,
  dialogBackgroundColor: Colors.white,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: text_theme.bodyMedium!.copyWith(color: component_gray),
    labelStyle: text_theme.bodyMedium,
    fillColor: fade_gray,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    errorStyle: text_theme.caption!.copyWith(
      color: error_color,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: error_color, width: 1),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: error_color, width: 1),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  ),
  splashFactory: InkSparkle.splashFactory,
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all(Colors.black),
  ),
  listTileTheme: const ListTileThemeData(
      iconColor: Colors.black,
      horizontalTitleGap: 12,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
  useMaterial3: true,
  bottomAppBarTheme: _base_theme.bottomAppBarTheme.copyWith(
    color: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  textTheme: text_theme,
  appBarTheme: AppBarTheme(
      titleTextStyle:
          text_theme.bodyMedium!.copyWith(fontWeight: FontWeight.w900),
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black //here you can give the text color
      ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black, shape: CircleBorder(), elevation: 0),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: elevated_button_style,
  ),
  textButtonTheme: TextButtonThemeData(
    style: text_button_style,
  ),
  primaryColor: primary_color,
  iconTheme: const IconThemeData(color: Colors.black, size: 24),
  colorScheme: _base_theme.colorScheme.copyWith(
    primary: primary_color,
    surfaceTint: primary_color,
    surface: Colors.black,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      // Set your transitions here:
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);
