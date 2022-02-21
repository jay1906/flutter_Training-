import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_app/Models/catalog.dart';
import 'package:my_app/Widgets/theme.dart';

import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

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
      backgroundColor: Mytheme.creamcolor,
      // appBar: AppBar(
      //   centerTitle: false,
      //   title: Text(
      //     'Catalog App',
      //     style: TextStyle(fontSize: 28, color: Colors.black),
      //   ),
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(30),
      //     child: Text('Trending items'),
      //   ),
      // ),
      body: Column(
        children: [
          CatlogHeader(),
          if (Catalogmodel.items != null && Catalogmodel.items.isNotEmpty)
            CatalogList()
          else
            Expanded(
              child: Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class catalogitem extends StatelessWidget {
  final Item catalog;

  const catalogitem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: double.infinity,
      // padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Mytheme.creamcolor,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(
                      catalog.image,
                      width: 65,
                      height: 65,
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                catalog.name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Mytheme.darkbluishcolor),
              ),
              Text(catalog.desc,
                  style: Theme.of(context).textTheme.caption.merge(
                        TextStyle(fontSize: 13),
                      )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${catalog.price.toString()}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.blueGrey.shade600,
                            ),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        child: Text('Buy'))
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
