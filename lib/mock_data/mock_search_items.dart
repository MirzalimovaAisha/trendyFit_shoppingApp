class Item {
  final String search_items;

  Item({
    required this.search_items,
  });
}

List<Item> recommendedKeywordItems = [
  Item(search_items: '플로럴 미디 원피스'),
  Item(search_items: '벨티드'),
  Item(search_items: '신상품'),
  Item(search_items: '여성용 아우터'),
  Item(search_items: '와이드 팬츠'),
  Item(search_items: '인기 원피스'),
];

List<Item> searchHistoryItems = [
  Item(search_items: '청바지'),
  Item(search_items: '겨울 코트'),
  Item(search_items: '블라우스'),
  Item(search_items: '스웨터'),
  Item(search_items: '캐주얼 자켓'),
  Item(search_items: '오버사이즈 후드티'),
];
