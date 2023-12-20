import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme googleFonts() {
  return GoogleFonts.quicksandTextTheme().copyWith(
    titleMedium: GoogleFonts.quicksand(
      fontWeight: FontWeight.bold,
      //color: Colors.white,
      fontSize: 24,
    ),
    labelMedium: GoogleFonts.quicksand(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 22,
    ),
    titleSmall: GoogleFonts.quicksand(
      fontWeight: FontWeight.bold,
      color: Colors.grey,
      fontSize: 16,
    ),
    labelSmall: GoogleFonts.quicksand(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 18,
    ),
    headlineSmall: GoogleFonts.quicksand(
      //fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 16,
    ),
  );
}
