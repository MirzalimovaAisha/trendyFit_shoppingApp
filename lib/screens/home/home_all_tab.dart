import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widgets/carousel_widget.dart';
import 'package:shoping/widgets/product_cards.dart';

class HomeAllTab extends StatelessWidget {
  const HomeAllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
        body: ListView(
          children: [
            const CarouselWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ALL Sellers', style: GoogleFonts.nanumPenScript(fontSize: 27)),
                  const SizedBox(height: 10),
                  const ProductCards(),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
