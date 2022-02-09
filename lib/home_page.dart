import 'package:flutter/material.dart';
import 'package:my_app/Models/catalog.dart';
import 'package:my_app/Widgets/Drawer.dart';
import 'package:my_app/Widgets/item_widget.dart';

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  final int Days = 30;
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => Catalogmodel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CatalogApp',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummylist[index]);
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
