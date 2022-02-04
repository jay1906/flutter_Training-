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
  final _Formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_Formkey.currentState.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.HomeRoute);
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Details"),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: _Formkey,
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password", labelText: "Enter Password"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter password";
                        } else if (value.length < 6) {
                          return "password must be 8 charaters";
                        }
                        return null;
                      },
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
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () => moveTohome(context),

                          //Navigator.pushNamed(
                          //context, Myroutes.HomeRoute);

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
                            //decoration: BoxDecoration(
                            // color: Colors.deepPurple,
                            // ),
                          ),
                        ),
                      ),
                    ])
                  ],
                ),
              )
            ], //children
          ),
        ),
      )),
    );
  }
}
