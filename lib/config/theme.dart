import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline2: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline3: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline4: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headline5: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    headline6: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyText1: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}