import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsApp {
  static const titleSmall = 24.0;
  static const bodyLarge = 18.0;
  static const bodyMedium = 16.0;

  static TextStyle appBarTxtStyle = GoogleFonts.urbanist(
      fontSize: titleSmall, fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle outlinedBtnTxtStyle = GoogleFonts.urbanist(
      fontSize: bodyLarge, fontWeight: FontWeight.w700, letterSpacing: 0.2);

  static TextStyle elevatedBtnTxtStyle = GoogleFonts.urbanist(
    fontSize: bodyMedium,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
  );

  static TextTheme textTheme = GoogleFonts.urbanistTextTheme().copyWith(
    titleLarge:
        GoogleFonts.urbanist(fontWeight: FontWeight.w700, color: Colors.black),
    bodyLarge: GoogleFonts.urbanist(
        fontWeight: FontWeight.w500, color: Colors.black, letterSpacing: 0.2),
    bodyMedium: GoogleFonts.urbanist(
        fontSize: bodyMedium, fontWeight: FontWeight.w500, color: Colors.black),
  );
}
