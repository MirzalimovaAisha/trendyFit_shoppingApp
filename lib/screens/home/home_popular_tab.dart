import 'package:flutter/material.dart';
import 'package:shoping/widgets/product_cards.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularTab extends StatelessWidget {
  const HomePopularTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBFBFB),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x35000000),
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Popular 상품을 검색하세요',
                      hintStyle: const TextStyle(color: Color(0xFF7B7B7B)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Icon(Icons.search, color: Color(0xFFB2B2B2),),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                const ProductCards(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
