import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assests/images/login_image.png",
          fit: BoxFit.cover,
        ),
        Text(
          "Welcome my friend",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black38),
        )
      ],
    ));
  }
}
