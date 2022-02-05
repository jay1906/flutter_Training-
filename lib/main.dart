import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/routes.dart';

import 'home_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: Myroutes.HomeRoute,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.HomeRoute: (context) => HomePage(),
        Myroutes.LoginRoute: (context) => LoginPage(),
      },
    );
  }
}
