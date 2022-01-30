import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  final int Days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CatalogApp'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'this is a tutorial application for just practising for $Days days',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 23,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        drawer: Drawer());
  }
}
