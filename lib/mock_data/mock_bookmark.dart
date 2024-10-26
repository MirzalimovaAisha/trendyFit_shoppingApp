class Item {
  final int id;
  final String photo;
  final String name;
  final int price;

  Item({
    required this.id,
    required this.photo,
    required this.name,
    required this.price,
  });
}

List<Item> bookmarkItems = [
  Item(id: 1, photo: 'assets/images/bookmarked/1.jpg', name: '옷1', price: 19000),
  Item(id: 2, photo: 'assets/images/bookmarked/2.jfif', name: '옷2', price: 23000),
  Item(id: 3, photo: 'assets/images/bookmarked/3.webp', name: '옷3', price: 35000),
  Item(id: 4, photo: 'assets/images/bookmarked/4.gif', name: '옷4', price: 90000),
  Item(id: 5, photo: 'assets/images/bookmarked/5.jpg', name: '옷5', price: 31000),
];

