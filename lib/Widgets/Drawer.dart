import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://www.nawpic.com/media/2020/luffy-nawpic-9.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Jay Dave",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("jayd72059@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white70,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white70,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white70,
              ),
              title: Text(
                "Contact us ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.chart_bar_circle,
                color: Colors.white70,
              ),
              title: Text(
                "FAQ ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
