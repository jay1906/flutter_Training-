import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_app/Models/catalog.dart';
import 'package:my_app/Widgets/Drawer.dart';
import 'package:my_app/Widgets/item_widget.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int Days = 30;

  final String name = "codepur";

  @override
  void initState() {
    loaddata();
    super.initState();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogjson =
        await rootBundle.loadString("assests/files/catalog.json");

    final decodeddata = jsonDecode(catalogjson);
    var productsData = decodeddata["products"];
    Catalogmodel.items = List.from(productsData)
        .map<Item>((item) => Item.frommap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CatalogApp',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (Catalogmodel.items != null && Catalogmodel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: Catalogmodel.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(item: Catalogmodel.items[index]);
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer());
  }
}
