import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});



  @override
  Widget build(BuildContext context) {
    //  const item {
    //   final String  recommend;
    //
    //   item({
    //     required this.recommend,
    //   })
    // }
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      // appBar: AppBar(),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ========== 검색창 ===========
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)
                ),
                const SizedBox(width: 5,),

                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBFBFB),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x35000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '상품을 검색하세요',
                        hintStyle: const TextStyle(color: Color(0xFF7B7B7B)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15, right: 10),
                          child: Icon(Icons.search, color: Color(0xFFB2B2B2),),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),

           const SizedBox(height: 20,),

          //   ========== 추천 검색어 ==============
            Text('추천 검색어', style: GoogleFonts.notoSansKr(fontWeight: FontWeight.w500, fontSize: 16),),
            const SizedBox(height: 6,),
            // ListView.builder(
            //     itemBuilder: itemBuilder
            // ),
          ],
        ),
      ),
    );
  }
}
