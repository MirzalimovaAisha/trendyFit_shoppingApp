import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widgets/bookmark_widget.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = user[0].name;
    final userPhoto = user[0].photo;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        toolbarHeight: 60, // AppBar 높이를 조정해 충분히 넓게 만듦
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$userName 님',
                style: GoogleFonts.notoSansKr(
                  fontSize: 16, // 원하는 크기로 설정
                  color: const Color(0xFF301709),
                ),
              ),
              CircleAvatar(
                radius: 20, // 이미지 크기 조정
                backgroundImage: AssetImage(userPhoto),
              ),
            ],
          ),
        ),
      ),



      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                BookmarkWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
