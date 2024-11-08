import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shoping/widgets/cart_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ValueNotifier<int> totalPriceNotifier = ValueNotifier<int>(0);
  final NumberFormat currencyFormat = NumberFormat('#,###');

  @override
  void dispose() {
    totalPriceNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.nanumPenScript(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF4F4F4),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CartWidget(
          onTotalPriceChanged: (int totalPrice) {
            totalPriceNotifier.value = totalPrice;
          },
        ),
      ),
      bottomNavigationBar: Container(
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
        height: 230,
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('상품 금액', style: TextStyle(color: Color(0xFF888888), fontSize: 15)),
                ValueListenableBuilder<int>(
                  valueListenable: totalPriceNotifier,
                  builder: (context, totalPrice, _) {
                    return Text(
                      '${currencyFormat.format(totalPrice)}원',
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('할인금액', style: TextStyle(color: Color(0xFF888888), fontSize: 15)),
                Text('0원', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('배송비', style: TextStyle(color: Color(0xFF888888), fontSize: 15)),
                Text('5,000원', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
              ],
            ),
            const Divider(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('결제 예정 금액', style: TextStyle(color: Color(0xFF888888), fontSize: 18)),
                ValueListenableBuilder<int>(
                  valueListenable: totalPriceNotifier,
                  builder: (context, totalPrice, _) {
                    return Text(
                      '${currencyFormat.format(totalPrice + 5000)}원',
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    );
                  },
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF28182C),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('구매하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
