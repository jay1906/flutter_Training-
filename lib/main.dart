import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: "/home",
      routes: {
        "/": (context) => login_page(),
        "/home": (context) => home_page(),
        "/login": (context) => login_page(),
      },
    );
  }
}
