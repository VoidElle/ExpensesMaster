import 'package:flutter/material.dart';

class CustomColors {

  /* ========== MAIN COLORS ========== */
  static const kPrimaryColor = Color(0xFF8968C4);
  static const kWhiteBackgroundColor = Color(0xFFDBDBDB);

  /* ========== TEXT COLORS ========== */
  static const kBlackTextColor = Color(0xFF111111);
  static const kWhiteTextColor = Color(0xFFD9D9D9);

  /* ========== UTILS COLORS ========== */
  static final kFormBackgroundColor = const Color(0xFFB6B6B6).withOpacity(.5);
  static final kFormTextColor = const Color(0xFF111111).withOpacity(0.5);

  /* ========== PALETTES INTRODUCTION COLORS ========== */
  static final List<Color> primaryPalette = [
    kPrimaryColor,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
  ];

}