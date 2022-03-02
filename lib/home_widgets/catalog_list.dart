import 'package:flutter/material.dart';
import 'package:my_app/Models/catalog.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/home_widgets/home_details_page.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: Catalogmodel.items.length,
          itemBuilder: (context, index) {
            final catalog = Catalogmodel.getbyposition(index);
            return InkWell(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homedetailpage(
                          catalog: Catalogmodel.getbyId(2),
                        ),
                      ),
                    ),
                child: catalogitem(catalog: catalog));
          }),
    );
  }
}
