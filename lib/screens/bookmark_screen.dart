import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widgets/bookmark_widget.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF4F4F4),
        toolbarHeight: 50,
        title: Center(
          child: Text('Favorite', style: GoogleFonts.nanumPenScript(
            fontSize: 30,
          ),),
        ),
      ),

      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: const Center(
              child: BookmarkWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
