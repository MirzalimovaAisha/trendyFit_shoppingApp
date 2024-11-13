import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widgets/appbar_widget.dart';
import 'package:shoping/widgets/bookmark_widget.dart';
import 'package:shoping/widgets/home_drawer.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),

      appBar: AppbarWidget(),

      drawer: const HomeDrawer(),

      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favorite',
                    style: GoogleFonts.nanumPenScript(
                        fontSize: 32
                    ),
                  ),
                  const BookmarkWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
