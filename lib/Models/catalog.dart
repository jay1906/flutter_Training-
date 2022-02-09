class Catalogmodel {
  static final items = [
    Item(
      id: "maharshi001",
      name: "iphone 12 pro max",
      description: "Apple Iphone 12th genration",
      price: 1200,
      color: "#507b4f",
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-blue-select-2020?wid=470&hei=556&fmt=jpeg&qlt=95&.v=1604343704000",
    ),
  ];
}

class Item {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.color,
      this.image});
}
