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
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    final Item = Catalogmodel.items[index];
                    return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: GridTile(
                          header: Container(
                            child: Text(
                              Item.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(color: Colors.deepPurple),
                          ),
                          child: Image.network(Item.image),
                          footer: Container(
                            child: Text(
                              Item.price.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ));
                  },
                  itemCount: Catalogmodel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer());
  }
}
