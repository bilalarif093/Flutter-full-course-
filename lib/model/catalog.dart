class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
  final products = [
    Item("Codepur001", "Iphone 12 pro", "Apple IPhone 12th generation", 999,
        "#33505a", "images/iphone_12_pro.png"),
  ];
}
