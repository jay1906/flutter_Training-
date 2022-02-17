import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData get lighttheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
          centerTitle: true));

  static ThemeData get darktheme => ThemeData(brightness: Brightness.dark);

  //colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkbluishcolor = Color(0xff403b58);
}
