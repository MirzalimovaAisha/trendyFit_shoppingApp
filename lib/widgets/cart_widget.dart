import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_cart.dart';
import 'package:shoping/screens/detail_page/product_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CartWidget extends StatefulWidget {
  final Function(int) onTotalPriceChanged;

  const CartWidget({super.key, required this.onTotalPriceChanged});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  List<bool> selectedItems = List.generate(cartItems.length, (index) => false);
  final NumberFormat currencyFormat = NumberFormat('#,###');
  List<int> quantities = List.generate(cartItems.length, (index) => 1);

  void _calculateTotalPrice() {
    int totalPrice = 0;
    for (int i = 0; i < selectedItems.length; i++) {
      if (selectedItems[i]) {
        totalPrice += cartItems[i].price * quantities[i];
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(item: item),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item.photo,
                            width: 100,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              setState(() {
                                if (quantities[index] > 1) {
                                  quantities[index]--;
                                  _calculateTotalPrice();
                                }
                              });
                            },
                            icon: const Icon(Icons.remove, size: 18, color: Color(0xFF888888),),
                          ),
                          const SizedBox(width: 20,),
                          Text('${quantities[index]}', style: const TextStyle(fontSize: 16)),
                          const SizedBox(width: 20,),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              setState(() {
                                quantities[index]++;
                                _calculateTotalPrice();
                              });
                            },
                            icon: const Icon(Icons.add, size: 18, color: Color(0xFF888888),),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.name,
                              style: GoogleFonts.notoSansKr(
                                color: const Color(0xFF444444),
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                  selectedItems.removeAt(index);
                                  quantities.removeAt(index);
                                  _calculateTotalPrice();
                                });
                              },
                              icon: const Icon(Icons.close, color: Colors.grey, size: 20),
                            ),
                          ],
                        ),
                        Text(
                          'M/${quantities[index]}개',
                          style: GoogleFonts.notoSansKr(color: const Color(0xFF9D9D9D), fontSize: 13),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          '${currencyFormat.format(item.price * quantities[index])}원',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xFFD6D6D6),
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }

}
