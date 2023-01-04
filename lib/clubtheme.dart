import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClubTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.lato(
        fontSize: 33.0, fontWeight: FontWeight.w800, color: const Color(0xFF097969)),
    displayLarge: GoogleFonts.lato(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: GoogleFonts.lato(
        fontSize: 21.0, fontWeight: FontWeight.w900, color: const Color(0xFF097969)),
    displaySmall: GoogleFonts.lato(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: GoogleFonts.lato(
        fontSize: 50.0, fontWeight: FontWeight.w800, color: const Color(0xFF097969)),
  );

  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.lato(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
    displayLarge: GoogleFonts.lato(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: GoogleFonts.lato(
        fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
    displaySmall: GoogleFonts.lato(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: GoogleFonts.lato(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
  );

  // 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.green,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: lightTextTheme,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
      primarySwatch: Colors.grey,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: darkTextTheme,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Colors.green[600]),
    );
  }
}
