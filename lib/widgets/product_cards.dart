import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_recommended.dart';
import 'package:shoping/screens/detail_page/product_detail_page.dart';
import 'package:intl/intl.dart'; // intl 패키지 추가

class ProductCards extends StatelessWidget {
  const ProductCards({super.key});

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat = NumberFormat('#,###'); // NumberFormat 인스턴스 생성

    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 13,
          childAspectRatio: 0.6,
        ),
        itemCount: recommendedItems.length,
        itemBuilder: (_, index) {
          final item = recommendedItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailPage(item: item)),
              );
            },
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item.photo,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Positioned(
                          right: 3,
                          top: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: IconButton(
                              color: Colors.black,
                                onPressed: (){},
                                icon: Image.asset('assets/icons/heart.png', width: 25,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${currencyFormat.format(item.price)}원',
                          style: const TextStyle(
                            color: Color(0xFF898989),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
