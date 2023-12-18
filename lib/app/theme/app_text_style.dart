import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silk_app/app/theme/app_colors.dart';

class AppTextStyle {
  static TextStyle get _montserratFonts => GoogleFonts.montserrat();

  static TextStyle get mont16breg => _montserratFonts.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: AppColors.mainElement,
      overflow: TextOverflow.ellipsis);

  static TextStyle get mont20breg => _montserratFonts.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: AppColors.mainElement,
      overflow: TextOverflow.ellipsis);

  static TextStyle get mont20bbld => _montserratFonts.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: AppColors.black,
      overflow: TextOverflow.ellipsis);
}
