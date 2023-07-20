// ignore_for_file: prefer_const_constructors

import '../utils/exports.dart';

ThemeData lighttheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.white,
    primary: Colors.black,
    secondary: Colors.grey,
  ),
);
