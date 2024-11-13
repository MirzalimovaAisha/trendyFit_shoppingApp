class Item {
  final String photo;
  final String name;

  Item({
    required this.photo,
    required this.name,
  });
}

List<Item> categoryItems = [
  Item(photo: 'assets/images/category/blouse.jpg', name: 'Blouse'),
  Item(photo: 'assets/images/category/cardigan.jpg', name: 'Cardigan'),
  Item(photo: 'assets/images/category/coat.jpg', name: 'Coat'),
  Item(photo: 'assets/images/category/shirt.jpg', name: 'Shirt'),
  Item(photo: 'assets/images/category/jacket.jpg', name: 'Jacket'),
  Item(photo: 'assets/images/category/pants.jpg', name: 'Pants'),
  Item(photo: 'assets/images/category/skirt.jpg', name: 'Skirt'),
  Item(photo: 'assets/images/category/tshirt.webp', name: 'T-Shirt'),
];
