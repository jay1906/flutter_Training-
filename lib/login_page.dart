import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white10,
        child: Column(
          children: [
            Image.asset(
              "assests/images/login_image.png",
              fit: BoxFit.cover,
            ),
            Text("Welcome my friend")
          ],
        ));
  }
}
