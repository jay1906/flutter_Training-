import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  get assests => null;

  get images => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                margin: EdgeInsets.zero,
                accountName: Text("Jay dave"),
                accountEmail: Text("jayd72059@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assests/images/luffy1.png")),
              ))
        ],
      ),
    );
  }
}
