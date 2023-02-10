import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final base = GoogleFonts.nunitoSansTextTheme();
const fontFamily = 'NunitoSans';
final text_theme = base.copyWith(
  labelMedium: const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: Colors.black),
  titleMedium: const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.black),
  bodyMedium: const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.black),
  bodyLarge: const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.black),
  bodySmall: const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.black),
  // button: const TextStyle(
  //     fontFamily: fontFamily, fontWeight: FontWeight.w600, fontSize: 14),
);

// base.copyWith(
//   button: base.button!.copyWith(fontWeight: FontWeight.w900, fontSize: 14),
// );
