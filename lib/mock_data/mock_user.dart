class Item {
  final String name;
  final String photo;
  final String email;

  Item({
    required this.name,
    required this.photo,
    required this.email,
  });
}


List<Item> user = [
  Item(
    name: '리바이 아커만',
    photo: 'assets/images/user/1.jpg',
    email: 'levi_ackerman@gmail.com',
  ),
];