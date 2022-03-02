import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData get lighttheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.white,
      canvasColor: Mytheme.creamcolor,
      // ignore: deprecated_member_use
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
          centerTitle: true));

  static ThemeData get darktheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.black,
      canvasColor: Mytheme.Darkcreamcolor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
      ));

  //colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color Darkcreamcolor = Color(0xb3aa6c);
  static Color darkbluishcolor = Color(0xff403b58);
  static Color lightbluishcolor = Color(0xADD8E6);
}
