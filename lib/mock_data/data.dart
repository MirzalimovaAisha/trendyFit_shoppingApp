class Item {
  final int id;
  final String photo;
  final String name;
  final double price;
  final int rating;

  Item({
    required this.id,
    required this.photo,
    required this.name,
    required this.price,
    required this.rating
  });
}

// === 남성의류 ===
List<Item> menItems = [
  Item(
    id: 1,
    photo: 'assets/images/남성/1.webp',
    name: '남성옷1',
    price: 703000,  // 숫자로 수정
    rating: 4,
  ),
  Item(
    id: 2,
    photo: 'assets/images/남성/2.jpg',
    name: '남성옷2',
    price: 50000,
    rating: 5,
  ),
  Item(
    id: 3,
    photo: 'assets/images/남성/3.jfif',
    name: '남성옷3',
    price: 120000,
    rating: 4,
  ),
  Item(
    id: 4,
    photo: 'assets/images/남성/4.jfif',
    name: '남성옷4',
    price: 89000,
    rating: 5,
  ),
  Item(
    id: 5,
    photo: 'assets/images/남성/5.jfif',
    name: '남성옷5',
    price: 64000,
    rating: 3,
  ),
  Item(
    id: 6,
    photo: 'assets/images/남성/6.jpg',
    name: '남성옷6',
    price: 45000,
    rating: 4,
  ),
  Item(
    id: 7,
    photo: 'assets/images/남성/7.jpg',
    name: '남성옷7',
    price: 78000,
    rating: 5,
  ),
  Item(
    id: 8,
    photo: 'assets/images/남성/8.jfif',
    name: '남성옷8',
    price: 92000,
    rating: 4,
  ),
  Item(
    id: 9,
    photo: 'assets/images/남성/9.jpg',
    name: '남성옷9',
    price: 110000,
    rating: 5,
  ),
  Item(
    id: 10,
    photo: 'assets/images/남성/10.webp',
    name: '남성옷10',
    price: 85000,
    rating: 4,
  ),
  Item(
    id: 11,
    photo: 'assets/images/남성/11.jpg',
    name: '남성옷11',
    price: 67000,
    rating: 3,
  ),
  Item(
    id: 12,
    photo: 'assets/images/남성/12.jpg',
    name: '남성옷12',
    price: 56000,
    rating: 4,
  ),
  Item(
    id: 13,
    photo: 'assets/images/남성/13.jfif',
    name: '남성옷13',
    price: 71000,
    rating: 5,
  ),
  Item(
    id: 14,
    photo: 'assets/images/남성/14.jfif',
    name: '남성옷14',
    price: 95000,
    rating: 4,
  ),
  Item(
    id: 15,
    photo: 'assets/images/남성/15.webp',
    name: '남성옷15',
    price: 88000,
    rating: 3,
  ),
];

// === 여성의류 ===
List<Item> womenItems = [
  Item(
    id: 1,
    photo: 'assets/images/여성/1.jfif',
    name: '여성옷1',
    price: 141000,
    rating: 4,
  ),
  Item(
    id: 2,
    photo: 'assets/images/여성/2.jfif',
    name: '여성옷2',
    price: 163000,
    rating: 5,
  ),
  Item(
    id: 3,
    photo: 'assets/images/여성/3.jpg',
    name: '여성옷3',
    price: 89000,
    rating: 3,
  ),
  Item(
    id: 4,
    photo: 'assets/images/여성/4.jfif',
    name: '여성옷4',
    price: 120000,
    rating: 4,
  ),
  Item(
    id: 5,
    photo: 'assets/images/여성/5.jpg',
    name: '여성옷5',
    price: 155000,
    rating: 5,
  ),
  Item(
    id: 6,
    photo: 'assets/images/여성/6.jpg',
    name: '여성옷6',
    price: 175000,
    rating: 4,
  ),
  Item(
    id: 7,
    photo: 'assets/images/여성/7.jpg',
    name: '여성옷7',
    price: 98000,
    rating: 3,
  ),
  Item(
    id: 8,
    photo: 'assets/images/여성/8.jfif',
    name: '여성옷8',
    price: 69000,
    rating: 4,
  ),
  Item(
    id: 9,
    photo: 'assets/images/여성/9.png',
    name: '여성옷9',
    price: 89000,
    rating: 5,
  ),
  Item(
    id: 10,
    photo: 'assets/images/여성/10.jfif',
    name: '여성옷10',
    price: 72000,
    rating: 4,
  ),
  Item(
    id: 11,
    photo: 'assets/images/여성/11.jpg',
    name: '여성옷11',
    price: 93000,
    rating: 4,
  ),
  Item(
    id: 12,
    photo: 'assets/images/여성/12.jpg',
    name: '여성옷12',
    price: 114000,
    rating: 5,
  ),
  Item(
    id: 13,
    photo: 'assets/images/여성/13.jpg',
    name: '여성옷13',
    price: 82000,
    rating: 3,
  ),
  Item(
    id: 14,
    photo: 'assets/images/여성/14.jfif',
    name: '여성옷14',
    price: 142000,
    rating: 4,
  ),
  Item(
    id: 15,
    photo: 'assets/images/여성/15.jpg',
    name: '여성옷15',
    price: 95000,
    rating: 5,
  ),
  Item(
    id: 16,
    photo: 'assets/images/여성/16.jpg',
    name: '여성옷16',
    price: 107000,
    rating: 4,
  ),
  Item(
    id: 17,
    photo: 'assets/images/여성/17.webp',
    name: '여성옷17',
    price: 125000,
    rating: 5,
  ),
];

// === 반려동물용품 ===
List<Item> petProducts = [
  Item(id: 1, photo: 'assets/images/반려동물용품/1.jpg', name: '반려동물용품1', price: 50000, rating: 4),
  Item(id: 2, photo: 'assets/images/반려동물용품/2.webp', name: '반려동물용품2', price: 34000, rating: 5),
  Item(id: 3, photo: 'assets/images/반려동물용품/3.jfif', name: '반려동물용품3', price: 26000, rating: 3),
  Item(id: 4, photo: 'assets/images/반려동물용품/4.jpg', name: '반려동물용품4', price: 45000, rating: 4),
  Item(id: 5, photo: 'assets/images/반려동물용품/5.jpg', name: '반려동물용품5', price: 50000, rating: 5),
  Item(id: 6, photo: 'assets/images/반려동물용품/6.jpg', name: '반려동물용품6', price: 38000, rating: 4),
  Item(id: 7, photo: 'assets/images/반려동물용품/7.jpg', name: '반려동물용품7', price: 42000, rating: 3),
  Item(id: 8, photo: 'assets/images/반려동물용품/8.jpg', name: '반려동물용품8', price: 29000, rating: 4),
  Item(id: 9, photo: 'assets/images/반려동물용품/9.jfif', name: '반려동물용품9', price: 27000, rating: 5),
  Item(id: 10, photo: 'assets/images/반려동물용품/10.jpg', name: '반려동물용품10', price: 31000, rating: 4),
  Item(id: 11, photo: 'assets/images/반려동물용품/11.png', name: '반려동물용품11', price: 36000, rating: 3),
  Item(id: 12, photo: 'assets/images/반려동물용품/12.avif', name: '반려동물용품12', price: 26000, rating: 4),
  Item(id: 13, photo: 'assets/images/반려동물용품/13.avif', name: '반려동물용품13', price: 25000, rating: 3),
  Item(id: 14, photo: 'assets/images/반려동물용품/14.jpeg', name: '반려동물용품14', price: 23000, rating: 5),
  Item(id: 15, photo: 'assets/images/반려동물용품/15.avif', name: '반려동물용품15', price: 32000, rating: 4),
  Item(id: 16, photo: 'assets/images/반려동물용품/16.jpg', name: '반려동물용품16', price: 24000, rating: 3),
  Item(id: 17, photo: 'assets/images/반려동물용품/17.jpg', name: '반려동물용품17', price: 35000, rating: 5),
];


// === 홈인테리어 ===
List<Item> homeInterior = [
  Item(id: 1, photo: 'assets/images/홈인테리어/1.jpg', name: '홈인테리어1', price: 170000, rating: 5),
  Item(id: 2, photo: 'assets/images/홈인테리어/2.jpg', name: '홈인테리어2', price: 203000, rating: 4),
  Item(id: 3, photo: 'assets/images/홈인테리어/3.jpg', name: '홈인테리어3', price: 160000, rating: 5),
  Item(id: 4, photo: 'assets/images/홈인테리어/4.png', name: '홈인테리어4', price: 140000, rating: 4),
  Item(id: 5, photo: 'assets/images/홈인테리어/5.png', name: '홈인테리어5', price: 170000, rating: 5),
  Item(id: 6, photo: 'assets/images/홈인테리어/6.png', name: '홈인테리어6', price: 130000, rating: 4),
  Item(id: 7, photo: 'assets/images/홈인테리어/7.png', name: '홈인테리어7', price: 145000, rating: 3),
  Item(id: 8, photo: 'assets/images/홈인테리어/8.png', name: '홈인테리어8', price: 123000, rating: 4),
  Item(id: 9, photo: 'assets/images/홈인테리어/9.jpg', name: '홈인테리어9', price: 160000, rating: 5),
  Item(id: 10, photo: 'assets/images/홈인테리어/10.jpg', name: '홈인테리어10', price: 150000, rating: 4),
  Item(id: 11, photo: 'assets/images/홈인테리어/11.jpg', name: '홈인테리어11', price: 133000, rating: 3),
  Item(id: 12, photo: 'assets/images/홈인테리어/12.jfif', name: '홈인테리어12', price: 140000, rating: 4),
  Item(id: 13, photo: 'assets/images/홈인테리어/13.jpg', name: '홈인테리어13', price: 150000, rating: 5),
  Item(id: 14, photo: 'assets/images/홈인테리어/14.jfif', name: '홈인테리어14', price: 170000, rating: 4),
  Item(id: 15, photo: 'assets/images/홈인테리어/15.jpg', name: '홈인테리어15', price: 200000, rating: 5),
];


// === 뷰티/화장품 ===
List<Item> cosmetics = [
  Item(id: 1, photo: 'assets/images/화장품/1.jpg', name: '화장품1', price: 45000, rating: 4),
  Item(id: 2, photo: 'assets/images/화장품/2.jpg', name: '화장품2', price: 55000, rating: 5),
  Item(id: 3, photo: 'assets/images/화장품/3.jpg', name: '화장품3', price: 60000, rating: 4),
  Item(id: 4, photo: 'assets/images/화장품/4.jpg', name: '화장품4', price: 45000, rating: 3),
  Item(id: 5, photo: 'assets/images/화장품/5.jpg', name: '화장품5', price: 55000, rating: 5),
  Item(id: 6, photo: 'assets/images/화장품/6.jpg', name: '화장품6', price: 48000, rating: 4),
  Item(id: 7, photo: 'assets/images/화장품/7.png', name: '화장품7', price: 47000, rating: 3),
  Item(id: 8, photo: 'assets/images/화장품/8.webp', name: '화장품8', price: 52000, rating: 5),
  Item(id: 9, photo: 'assets/images/화장품/9.webp', name: '화장품9', price: 49000, rating: 4),
  Item(id: 10, photo: 'assets/images/화장품/10.jpg', name: '화장품10', price: 45000, rating: 4),
  Item(id: 11, photo: 'assets/images/화장품/11.jpg', name: '화장품11', price: 53000, rating: 3),
  Item(id: 12, photo: 'assets/images/화장품/12.jfif', name: '화장품12', price: 60000, rating: 5),
  Item(id: 13, photo: 'assets/images/화장품/13.jpg', name: '화장품13', price: 47000, rating: 4),
  Item(id: 14, photo: 'assets/images/화장품/14.jpg', name: '화장품14', price: 42000, rating: 3),
  Item(id: 15, photo: 'assets/images/화장품/15.png', name: '화장품15', price: 51000, rating: 4),
];


// === 문구류 ===
List<Item> stationery = [
  Item(id: 1, photo: 'assets/images/문구류/1.jpg', name: '문구류1', price: 3000, rating: 4),
  Item(id: 2, photo: 'assets/images/문구류/2.webp', name: '문구류2', price: 5000, rating: 3),
  Item(id: 3, photo: 'assets/images/문구류/3.jpg', name: '문구류3', price: 4500, rating: 5),
  Item(id: 4, photo: 'assets/images/문구류/4.jpg', name: '문구류4', price: 6000, rating: 4),
  Item(id: 5, photo: 'assets/images/문구류/5.jpg', name: '문구류5', price: 3500, rating: 3),
  Item(id: 6, photo: 'assets/images/문구류/6.jpg', name: '문구류6', price: 4000, rating: 4),
  Item(id: 7, photo: 'assets/images/문구류/7.jpg', name: '문구류7', price: 5500, rating: 5),
  Item(id: 8, photo: 'assets/images/문구류/8.png', name: '문구류8', price: 4200, rating: 4),
  Item(id: 9, photo: 'assets/images/문구류/9.jfif', name: '문구류9', price: 3200, rating: 3),
  Item(id: 10, photo: 'assets/images/문구류/10.jpg', name: '문구류10', price: 5000, rating: 4),
  Item(id: 11, photo: 'assets/images/문구류/11.jpg', name: '문구류11', price: 3700, rating: 5),
  Item(id: 12, photo: 'assets/images/문구류/12.jpg', name: '문구류12', price: 4800, rating: 3),
  Item(id: 13, photo: 'assets/images/문구류/13.jpg', name: '문구류13', price: 4500, rating: 4),
  Item(id: 14, photo: 'assets/images/문구류/14.jfif', name: '문구류14', price: 3300, rating: 3),
  Item(id: 15, photo: 'assets/images/문구류/15.avif', name: '문구류15', price: 3500, rating: 5),
  Item(id: 16, photo: 'assets/images/문구류/16.webp', name: '문구류16', price: 2800, rating: 4),
];



