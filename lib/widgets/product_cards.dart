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
          mainAxisSpacing: 10,
          childAspectRatio: 0.64,
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
              decoration: BoxDecoration(
                // color: const Color(0xFFF5F5F5),
                color: const Color(0xFFF4F4F4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.asset(
                        item.photo,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
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
                            fontSize: 15,
                            color: Color(0xFF686868),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${currencyFormat.format(item.price)}원',
                          style: const TextStyle(
                            color: Color(0xFF301709),
                            fontWeight: FontWeight.w700,
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
