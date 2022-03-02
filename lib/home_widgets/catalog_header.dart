import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatlogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            centerTitle: false,
            title: Text(
              "Catalog App",
            ),
            titleTextStyle: TextStyle(
                fontStyle: GoogleFonts.abrilFatface().fontStyle,
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Trending Items',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
