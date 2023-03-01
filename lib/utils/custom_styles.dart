import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

class CustomStyles {

  /* ========== START INTRODUCTION COLORS ========== */

  static TextStyle introductionPageTitle() {
    return GoogleFonts.rubik().copyWith(
      fontSize: 46,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle introductionPageSubtitle() {
    return GoogleFonts.rubik().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w100,
    );
  }

  static TextStyle introductionPageFormNormal() {
    return GoogleFonts.rubik().copyWith(
      fontSize: 20,
    );
  }

  static TextStyle introductionPageFormError() {
    return GoogleFonts.rubik().copyWith(
      fontSize: 12,
    );
  }

  static TextStyle introductionPageFormHint() {
    return TextStyle(
      fontSize: 20,
      color: CustomColors.kFormTextColor,
    );
  }

  static TextStyle introductionPageStartButton() {
    return GoogleFonts.rubik().copyWith(
      color: CustomColors.kWhiteTextColor,
      fontSize: 18,
    );
  }

  static TextStyle introductionPageChangeColorDialogTitle() {
    return GoogleFonts.rubik().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle introductionPageChangeColorDialogConfirmButton() {
    return GoogleFonts.rubik().copyWith(
      color: CustomColors.kWhiteTextColor,
      fontSize: 18,
    );
  }

  /* ========== END INTRODUCTION COLORS ========== */


}