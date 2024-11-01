class Item {
  final String photo;
  final String text1;
  final String text2;
  final String text3;

  Item({
    required this.photo,
    required this.text1,
    required this.text2,
    required this.text3,
  });
}

List<Item> popularItem = [
  Item(
    photo: 'assets/images/popular/1.jfif',
    text1: '인기 의류',
    text2: 'Summer Sale',
    text3: '합리적인 가격으로 더욱 시원한 여름을',
  ),
  Item(
    photo: 'assets/images/popular/2.jpg',
    text1: '시원한 데일리 패션',
    text2: 'Premium Picks',
    text3: '편안함과 멋을 동시에, 여름 필수 아이템!',
  ),
  Item(
    photo: 'assets/images/popular/3.jpg',
    text1: '여름 특가 할인',
    text2: 'Hot Trends',
    text3: '합리적인 가격으로 스타일링',
  ),
  Item(
    photo: 'assets/images/popular/4.jfif',
    text1: '이번 주 베스트 아이템',
    text2: 'Hot Trends',
    text3: '많은 사랑을 받고 있는 인기 상품',
  ),
  Item(
    photo: 'assets/images/popular/5.webp',
    text1: '스페셜 할인 이벤트',
    text2: 'Special Event',
    text3: '합리적인 가격으로 놓치지 마세요',
  ),
];
