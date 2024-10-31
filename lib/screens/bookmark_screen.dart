import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widgets/bookmark_widget.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF6F6F6),
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
              child: BookmarkWidget()
            ),
          ),
        ],
      ),
    );
  }
}
