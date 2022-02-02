import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ChangeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
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
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    //ElevatedButton(
                    //style: TextButton.styleFrom(
                    // minimumSize: Size(120, 50)),
                    //child: Text("Login"),
                    //onPressed: () {
                    //Navigator.pushNamed(
                    //  context, Myroutes.HomeRoute);
                    // },
                    // ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          ChangeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, Myroutes.HomeRoute);
                        //Navigator.pushNamed(
                        //context, Myroutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: ChangeButton ? 50 : 120,
                        height: 50,
                        alignment: Alignment.center,
                        child: ChangeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ])
                ],
              ),
            )
          ], //children
        ),
      )),
    );
  }
}
