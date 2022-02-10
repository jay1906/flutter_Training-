import 'package:flutter/material.dart';
import 'package:my_app/Models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image(
          height: 200,
          fit: BoxFit.cover,
          image: NetworkImage(
            item.image,
          ),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
