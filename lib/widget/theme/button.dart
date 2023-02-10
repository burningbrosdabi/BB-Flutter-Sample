import 'package:dabi_chat/widget/theme/color.dart';
import 'package:dabi_chat/widget/theme/text.dart';
import 'package:flutter/material.dart';

final text_button_text_style = text_theme.button!.copyWith(
  fontWeight: FontWeight.w900,
);
final elevated_button_style = ButtonStyle(
  textStyle: MaterialStateProperty.all(text_button_text_style),
  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return component_gray;
      return Colors.white;
    },
  ),
  padding: MaterialStateProperty.all(EdgeInsets.zero),
  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return fade_gray;
      return Colors.black;
    },
  ),
  shape: MaterialStateProperty.all(const ContinuousRectangleBorder()),
  elevation: MaterialStateProperty.all(0),
  fixedSize: MaterialStateProperty.all(const Size.fromHeight(48)),
);

final text_button_style = elevated_button_style.copyWith(
  splashFactory: InkSplash.splashFactory,
  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return component_gray;
      return Colors.black;
    },
  ),
  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return fade_gray;
      return Colors.transparent;
    },
  ),
  textStyle: MaterialStateProperty.all(text_button_text_style),
);
