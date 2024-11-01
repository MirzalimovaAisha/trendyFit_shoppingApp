import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/screens/search_screen.dart';

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
        centerTitle: true,
        title: Text('Lev Fashion', style: GoogleFonts.moul(color: const Color(0xFF301709)),),
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  'assets/icons/drawer_menu.png',
                  width: 15,
                  height: 15,
                  // fit: BoxFit.cover,
                ),
              ),
            );
          }
        ),
        
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen()));
                  },
                  icon: Image.asset('assets/icons/search.png', width: 20, height: 20, ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset('assets/icons/cart.png', width: 20, height: 20,),
                ),
              ],
            ),
          ),

        ],
      ),

      drawer: Drawer(),

      body: ListView(
        children: [
          const CarouselWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Best Sellers', style: GoogleFonts.nanumPenScript(fontSize: 27),),
                const SizedBox(height: 10,),
                const ProductCards()
              ],
            ),
          )
        ],
      ),

    );
  }
}
