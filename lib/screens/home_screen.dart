import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_products.dart';
import 'package:shoping/mock_data/mock_user.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shoping/widgets/carousel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = user[0].name;
    final userPhoto = user[0].photo;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ===== 배경 이미지 ======
          Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ====== 배경 흐림 효과 ======
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
            child: Container(
              color: Colors.black.withOpacity(0.50),
            ),
          ),

          // ===== 전체 내용 스크롤 가능하도록 ListView로 감싸기 =====
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0, // bottom: 0을 추가해서 전체 화면 스크롤 가능하게 설정
            child: ListView(
              padding: const EdgeInsets.all(0), // 기본 패딩을 없앰
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ===== AppBar =====
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("$userName 님", style: const TextStyle(fontSize: 16, color: Colors.white)),
                          CircleAvatar(
                            backgroundImage: AssetImage(userPhoto),
                          ),
                        ],
                      ),
                      const SizedBox(height: 23),

                      // ===== 검색창 =====
                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: const TextStyle(fontSize: 15, color: Color(0xFFB2B2B2)),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Icon(Icons.search, color: Color(0xFFB2B2B2)),
                            ),
                            contentPadding: const EdgeInsets.only(left: 20, right: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),

                // ===== 컨테이너 =====
                Container(
                  // padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 27,
                              child: Text(
                                'Welcome to',
                                style: GoogleFonts.nanumPenScript(
                                    fontSize: 27,
                                    color: const Color(0xFF301709)
                                ),
                              ),
                            ),
                            Text('Lev Shoping',
                                style: GoogleFonts.nerkoOne(
                                  fontSize: 32,
                                  color: const Color(0xFF301709),
                                )),
                          ],
                        ),
                      ),

                      // ====== Carousel Widget ======
                      SizedBox(
                        height: 310,
                        child: CarouselWidget(),
                      ),

                      const SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: Column(
                          children: [
                            Text('Recommended Clothes',
                          style: GoogleFonts.nanumPenScript(
                              fontSize: 28,
                              color: const Color(0xFF301709)
                           )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
