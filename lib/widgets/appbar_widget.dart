import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:shoping/screens/cart_screen.dart';
import 'package:shoping/screens/search_screen.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 1.8,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        elevation: 0,
        title: Text(
          'TrendyFit',
          style: GoogleFonts.oleoScriptSwashCaps(color: const Color(0xFF301709)),
        ),
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  'assets/icons/drawer_menu.png',
                  width: 15,
                  height: 15,
                ),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SearchScreen()));
                  },
                  icon: Image.asset('assets/icons/search.png', width: 20, height: 20),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CartScreen()));
                  },
                  icon: Image.asset('assets/icons/cart.png', width: 20, height: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
