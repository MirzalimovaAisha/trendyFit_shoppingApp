import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/mock_data/mock_search_items.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});



  @override
  Widget build(BuildContext context) {

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
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recommendedKeywordItems.length,
                      itemBuilder: (context, index) {
                        final item = recommendedKeywordItems[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1, color: const Color(0xFFE4E4E4))
                            ),
                            child: Center(
                              child: Text(
                                item.search_items,
                                style: const TextStyle(color: const Color(0xFF717171), fontSize: 15),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),

            const Divider(height: 40,),

            // ============ 최근 검색어 ===============
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('최근 검색어', style: GoogleFonts.notoSansKr(fontWeight: FontWeight.w500, fontSize: 16),),
                Text('전체 삭제', style: GoogleFonts.notoSansKr(color: const Color(0xFF717171)),)
              ],
            ),
            const SizedBox(height: 20,),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchHistoryItems.length,
              itemBuilder: (context, index) {
                final item = searchHistoryItems[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/clock.png', width: 20,),
                          const SizedBox(width: 13,),
                          Text(item.search_items, style: const TextStyle(fontSize: 16, color: const Color(0xFF717171)),),
                        ],
                      ),
                      Image.asset('assets/icons/delete.png', width: 20,)
                    ],
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
