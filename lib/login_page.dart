import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
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
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Username", labelText: "Enter Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password", labelText: "Enter Password"),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //ElevatedButton(
                              //style: TextButton.styleFrom(
                              // minimumSize: Size(120, 50)),
                              //child: Text("Login"),
                              //onPressed: () {
                              //Navigator.pushNamed(
                              //  context, Myroutes.HomeRoute);
                              // },
                              // ),
                              Container(
                                width: 120,
                                height: 50,
                                color: Colors.deepPurple,
                                alignment: Alignment.center,
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                color: Colors.deepPurple,
                                alignment: Alignment.center,
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                //child: ElevatedButton(
                                //style: TextButton.styleFrom(
                                //minimumSize: Size(120, 50)),
                                //child: Text("Sign in"),
                                //onPressed: () {
                                //Text("Give your email address");
                                //},
                              ),
                              // )
                            ],
                          ),
                        ),
                      )
                    ], //children
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
