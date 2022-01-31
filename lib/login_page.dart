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
          height: 300,
          width: 250,
          color: Colors.white70.withOpacity(0.2),
          colorBlendMode: BlendMode.softLight,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "Welcome my friend",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username", labelText: "Enter Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password", labelText: "Enter Password"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(),
                child: Text("Login"),
                onPressed: () {
                  print("hey you are logged into the website");
                },
              )
            ], //children
          ),
        )
      ],
    ));
  }
}
