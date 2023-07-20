// ignore_for_file: prefer_const_constructors

import '../utils/exports.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color.fromARGB(255, 25, 38, 69),
    primary: Colors.white,
    secondary: Color(0xffA5C0FF),
  ),
);
