import 'package:flutter/material.dart';
import 'package:my_app/Widgets/theme.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
