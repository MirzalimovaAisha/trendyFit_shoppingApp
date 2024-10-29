import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_user.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = user[0].name;
    final userPhoto = user[0].photo;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 2,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$userName  님',
                style: GoogleFonts.notoSansKr(
                  fontSize: 16,
                  color: const Color(0xFF301709),
                ),
              ),
            ),
          ),
        ),
      ),

      // ====== body ======
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ====== 사용자 사진
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(userPhoto),
                ),

                const SizedBox(
                  height: 20,
                ),

                //   ====== 나머지 코드
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 7,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('계정 설정',
                            style: GoogleFonts.notoSansKr(fontSize: 16)),
                      ],
                    )
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0A000000),
                        blurRadius: 7,
                        offset: Offset(0, 5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('언어',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('다크모드',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('현제 버전 3.5.7',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('개인정보 처리방침',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0A000000),
                        blurRadius: 7,
                        offset: Offset(0, 5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('주문목록',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('취소-반품-교환목록',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('리뷰 관리',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('할인쿠폰',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('알람',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF1F1F1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('고객센터',
                                style: GoogleFonts.notoSansKr(fontSize: 16)),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 7,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('로그아웃',
                            style: GoogleFonts.notoSansKr(fontSize: 16)),
                      ],
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
