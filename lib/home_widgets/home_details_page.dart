import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Models/catalog.dart';
import 'package:my_app/Widgets/theme.dart';

// ignore: camel_case_types
class homedetailpage extends StatelessWidget {
  final Item catalog;

  const homedetailpage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        buttonPadding: EdgeInsets.all(12),
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$ ${catalog.price.toString()}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.redAccent),
          ),
          SizedBox(
            height: 40,
            width: 70,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey.shade600,
                    ),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: Text('Buy')),
          )
        ],
      ),
      appBar: AppBar(),
      backgroundColor: Mytheme.creamcolor,
      body: Center(
        child: Column(
          children: [
            Container(
              // height: 400,
              // width: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      catalog.image,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                catalog.name,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Mytheme.darkbluishcolor),
              ),
            ),
            Text(catalog.desc,
                style: Theme.of(context).textTheme.caption.merge(
                      TextStyle(fontSize: 15),
                    )),
            Text(
                'In theory, the iPhone 12, iPhone 12 Pro and iPhone 12 Pro Max should be equally competent in day light. The pro iPhones should be better at low light with the max being pitched as a photography powerhouse and quite rightfully so. Real world stats are close')
          ],
        ),
      ),
    );
  }
}

// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height - 100);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 100);
//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
