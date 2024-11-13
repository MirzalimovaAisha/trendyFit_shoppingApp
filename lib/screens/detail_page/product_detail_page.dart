import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/mock_data/item.dart';
import 'package:shoping/screens/detail_page/full_screen_image_page.dart';
import 'package:intl/intl.dart'; // intl 패키지 추가

class ProductDetailPage extends StatefulWidget {
  final Item item;

  const ProductDetailPage({super.key, required this.item});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1; // 초기 수량 설정
  late int totalPrice; // 총 금액 변수 선언
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.item.price; // 초기 총 금액 설정
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
      totalPrice = widget.item.price * quantity; // 수량 증가에 따른 총 금액 업데이트
    });
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        totalPrice = widget.item.price * quantity; // 수량 감소에 따른 총 금액 업데이트
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat =
        NumberFormat('#,###'); // NumberFormat 인스턴스 생성

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        toolbarHeight: 45,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 상품 이미지
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullScreenImagePage(
                              imageUrl: widget.item.photo)));
                },
                child: Center(
                  child: ClipRRect(
                    child: Image.asset(
                      widget.item.photo,
                      width: double.infinity,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x42000000),
                      blurRadius: 3,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.item.name,
                                style: GoogleFonts.notoSansKr(
                                  fontSize: 18,
                                  color: const Color(0xFF301709),
                                ),
                              ),
                              const Icon(Icons.share,
                                  color: Color(0xFF7C7C7C), size: 20),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${currencyFormat.format(widget.item.price)}원',
                            // 금액 포맷팅
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('설명서',
                              style: GoogleFonts.notoSansKr(
                                  fontSize: 16,
                                  color: const Color(0xFF301709))),
                          const SizedBox(height: 10),
                          const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has "
                            "been the industry's standard dummy text ever since the 1500s.",
                            style: TextStyle(
                                color: Color(0xFF9D9D9D), fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('사이즈',
                              style: GoogleFonts.notoSansKr(
                                  fontSize: 16,
                                  color: const Color(0xFF301709))),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('80',
                                    style: TextStyle(
                                        color: Color(0xFF737373),
                                        fontSize: 12)),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('84',
                                    style: TextStyle(
                                        color: Color(0xFF737373),
                                        fontSize: 12)),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('90',
                                    style: TextStyle(
                                        color: Color(0xFF737373),
                                        fontSize: 12)),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('95',
                                    style: TextStyle(
                                        color: Color(0xFF737373),
                                        fontSize: 12)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('배송 정보',
                              style: GoogleFonts.notoSansKr(
                                  fontSize: 16,
                                  color: const Color(0xFF301709))),
                          const SizedBox(height: 7),
                          Text('내일 도착 10/2',
                              style: GoogleFonts.notoSansKr(
                                  fontSize: 14,
                                  color: const Color(0xFF009A0A)
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 7),
        ],
      ),
      bottomNavigationBar: Container(
        // height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, -1),
              spreadRadius: 0,
            )
          ],
        ),

        // ====== 구매하기 버튼 ======
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: Image.asset(
                  isLiked ? 'assets/icons/heart_red.png' : 'assets/icons/full_heart.png',
                  width: 25
              ),
            ),

            const SizedBox(width: 10),
            Container(
              height: 25,
              color: const Color(0xFFECECEC),
              width: 1,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              StateSetter setModalState) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 20),
                              height: 270,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '결제',
                                          style: TextStyle(
                                            color: Color(0xFFE96E6E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 하면 ',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '1%',
                                          style: TextStyle(
                                            color: Color(0xFFE96E6E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '포인트가 적립됩니다.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '수량',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (quantity > 1) {
                                                setModalState(() {
                                                  quantity--;
                                                  totalPrice =
                                                      widget.item.price *
                                                          quantity;
                                                });
                                              }
                                            },
                                            icon: const Icon(Icons.remove,
                                                size: 20),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text('$quantity',
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setModalState(() {
                                                quantity++;
                                                totalPrice = widget.item.price *
                                                    quantity;
                                              });
                                            },
                                            icon:
                                                const Icon(Icons.add, size: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Divider(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('상품 금액',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xFF929292)
                                                ),
                                            ),
                                            Text(
                                                '${currencyFormat.format(totalPrice)}원',
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold)
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                      const SnackBar(
                                                          content: Text('장바구니에 추가되었습니다.'),
                                                        // backgroundColor: const Color(0xFFE96E6E),
                                                      )
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: const Color(0xFF28182C),
                                                  padding: const EdgeInsets.symmetric(vertical: 18),
                                                  side: const BorderSide(color: Color(0xFF28182C),
                                                  ),
                                                ),
                                                child: const Text(
                                                  '장바구니',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF28182C),
                                                  foregroundColor: Colors.white,
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 18),
                                                  side: const BorderSide(
                                                    color: Color(0xFF28182C),
                                                  ),
                                                ),
                                                child: const Text(
                                                  '결제',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF28182C),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10),
                  ),
                  child: const Text(
                    '구매하기',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
