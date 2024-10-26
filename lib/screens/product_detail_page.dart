import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_recommended.dart'; // Mock 데이터가 포함된 파일

class ProductDetailPage extends StatelessWidget {
  final Item item; // 선택된 아이템 정보

  const ProductDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20, top: 3),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_outline, color: Color(0xFF7C7C7C),))
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 상품 이미지
          Center(
            child: ClipRRect(
              child: Image.asset(
                item.photo,
                width: double.infinity,
                height: 290,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const  EdgeInsets.fromLTRB(20, 23, 20, 20),
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
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 18,
                      ),),
                    const Icon(Icons.share, color: Color(0xFF7C7C7C), size: 20,)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
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
        child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF301709),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(17)
            ),
            child: const Text('구매하기')
        ),
      ),
    );
  }
}
