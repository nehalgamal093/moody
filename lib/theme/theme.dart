import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moody/theme/color_manager.dart';

class MyTheme {
  static ThemeData myThemeDate = ThemeData(
    textTheme: TextTheme(
      titleLarge: GoogleFonts.inter(
        color: ColorManager.maroonColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: GoogleFonts.inter(
        color: ColorManager.maroonColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: GoogleFonts.inter(
        color: ColorManager.blackColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: ColorManager.grayColor
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.greenColor
      ),
      bodyMedium: GoogleFonts.inter(
        color: ColorManager.maroonColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: GoogleFonts.inter(
        color: ColorManager.blackColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
