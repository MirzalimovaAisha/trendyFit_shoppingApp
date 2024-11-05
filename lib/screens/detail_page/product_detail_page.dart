import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/mock_data/item.dart';
import 'package:shoping/screens/detail_page/full_screen_image_page.dart';
import 'package:intl/intl.dart'; // intl 패키지 추가

class ProductDetailPage extends StatelessWidget {
  final Item item;

  const ProductDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat = NumberFormat('#,###'); // NumberFormat 인스턴스 생성

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreenImagePage(imageUrl: item.photo)));
                },
                child: Center(
                  child: ClipRRect(
                    child: Image.asset(
                      item.photo,
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
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.name,
                                style: GoogleFonts.notoSansKr(
                                  fontSize: 18,
                                  color: const Color(0xFF301709),
                                ),
                              ),
                              const Icon(Icons.share, color: Color(0xFF7C7C7C), size: 20),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${currencyFormat.format(item.price)}원', // 금액 포맷팅
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
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('설명서', style: GoogleFonts.notoSansKr(fontSize: 16, color: const Color(0xFF301709))),
                          const SizedBox(height: 10),
                          const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has "
                                "been the industry's standard dummy text ever since the 1500s.",
                            style: TextStyle(color: Color(0xFF9D9D9D), fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('사이즈', style: GoogleFonts.notoSansKr(fontSize: 16, color: const Color(0xFF301709))),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('80', style: TextStyle(color: Color(0xFF737373), fontSize: 12)),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('84', style: TextStyle(color: Color(0xFF737373), fontSize: 12)),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('90', style: TextStyle(color: Color(0xFF737373), fontSize: 12)),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: const Color(0xFFC0C0C0)),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: const Text('95', style: TextStyle(color: Color(0xFF737373), fontSize: 12)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('무료 배송', style: GoogleFonts.notoSansKr(fontSize: 16, color: const Color(0xFF301709))),
                          const SizedBox(height: 10),
                          Text('내일 도착 10/2', style: GoogleFonts.notoSansKr(fontSize: 14, color: const Color(0xFF6F6F6F))),
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
        height: 50,
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
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/heart_red.png', width: 25),
            ),
            const SizedBox(width: 10),
            Container(
              height: 25,
              color: const Color(0xFFECECEC),
              width: 1,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF28182C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(17),
                ),
                child: const Text('구매하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
