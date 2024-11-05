import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_cart.dart';
import 'package:shoping/screens/detail_page/product_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart'; // intl 패키지 추가

class CartWidget extends StatefulWidget {
  final Function(int) onTotalPriceChanged;

  const CartWidget({super.key, required this.onTotalPriceChanged});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  List<bool> selectedItems = List.generate(cartItems.length, (index) => false);
  final NumberFormat currencyFormat = NumberFormat('#,###'); // NumberFormat 인스턴스 생성

  void _calculateTotalPrice() {
    int totalPrice = 0;
    for (int i = 0; i < selectedItems.length; i++) {
      if (selectedItems[i]) {
        totalPrice += cartItems[i].price;
      }
    }
    widget.onTotalPriceChanged(totalPrice);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        final item = cartItems[index];
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Checkbox(
                value: selectedItems[index],
                onChanged: (bool? value) {
                  setState(() {
                    selectedItems[index] = value ?? false;
                  });
                  _calculateTotalPrice();
                },
                activeColor: const Color(0xFF4A364F),
                shape: const CircleBorder(),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(item: item),
                    ),
                  );
                },
                child: Image.asset(
                  item.photo,
                  width: 100,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.name,
                      style: GoogleFonts.notoSansKr(
                        color: const Color(0xFF444444),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      '${currencyFormat.format(item.price)}원', // 금액 포맷팅
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Text('sfsf')
            ],
          ),
        );
      },
    );
  }
}
