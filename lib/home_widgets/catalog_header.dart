import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatlogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          centerTitle: false,
          title: Text(
            "Catalog App",
          ),
          titleTextStyle: TextStyle(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Trending Items',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
