class Item {
  final String searchItems;

  Item({
    required this.searchItems,
  });
}

List<Item> recommendedKeywordItems = [
  Item(searchItems: '플로럴 미디 원피스'),
  Item(searchItems: '벨티드'),
  Item(searchItems: '신상품'),
  Item(searchItems: '여성용 아우터'),
  Item(searchItems: '와이드 팬츠'),
  Item(searchItems: '인기 원피스'),
];

List<Item> searchHistoryItems = [
  Item(searchItems: '청바지'),
  Item(searchItems: '겨울 코트'),
  Item(searchItems: '블라우스'),
  Item(searchItems: '스웨터'),
  Item(searchItems: '캐주얼 자켓'),
  Item(searchItems: '오버사이즈 후드티'),
];
