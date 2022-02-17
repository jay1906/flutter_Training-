import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_app/Models/catalog.dart';
import 'package:my_app/Widgets/theme.dart';

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
      backgroundColor: Colors.white,
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
            Center(
              child: Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}

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
          titleTextStyle: TextStyle(fontSize: 28, color: Colors.black),
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

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: Catalogmodel.items.length,
          itemBuilder: (context, index) {
            final catalog = Catalogmodel.items[index];
            return catalogitem(catalog: catalog);
          }),
    );
  }
}

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
        color: Mytheme.creamcolor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Mytheme.creamcolor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  catalog.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
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
