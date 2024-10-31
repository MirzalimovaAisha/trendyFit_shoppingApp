import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_products.dart';
import 'package:shoping/mock_data/mock_user.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shoping/widgets/carousel_widget.dart';
import 'package:shoping/widgets/product_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = user[0].name;
    final userPhoto = user[0].photo;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        toolbarHeight: 50,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        ),
        leading: Drawer(),
      ),

    );
  }
}
