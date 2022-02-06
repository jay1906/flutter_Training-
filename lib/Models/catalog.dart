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

final Products = [
  Item(
    id: "maharshi001",
    name: "iphone 12 pro max",
    description: "12th genration",
    price: 5456,
    color: "#507b4f",
    image:
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F71MHTD3uL4L.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.com%2FApple-iPhone-Pacific-Carrier-Subscription%2Fdp%2FB08L5PHJ2Y&tbnid=MlwfKFZ-fpEEmM&vet=12ahUKEwjI-fDslev1AhUogGMGHfHUDlwQMygAegUIARCuAQ..i&docid=U9La3KXk2mD3iM&w=2560&h=2560&q=iphone%2012%20pro%20max&ved=2ahUKEwjI-fDslev1AhUogGMGHfHUDlwQMygAegUIARCuAQ",
  )
];
