import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_bookmark.dart';
import 'package:shoping/screens/detail_page/product_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/mock_data/item.dart';

class BookmarkWidget extends StatelessWidget {
  const BookmarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: bookmarkItems.length,
          itemBuilder: (_, index) {
            final item = bookmarkItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetailPage(item: item )),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 95,
                    decoration: BoxDecoration(
                      // color: const Color(0xFFF8F8F8),
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const[
                        BoxShadow(
                          color: Color(0x21000000),
                          blurRadius: 5,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(item.photo),fit: BoxFit.cover),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 7, 7, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: GoogleFonts.notoSansKr(
                                  color: const Color(0xFF444444),
                                  fontSize: 15,
                                )
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                  '${item.price}원',
                                  style: GoogleFonts.notoSansKr(
                                    color: const Color(0xFF444444),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  )
                              ),

                              const SizedBox(height: 6,),
                              Row(
                                children: [
                                   ElevatedButton(
                                      onPressed: (){},
                                       style: ElevatedButton.styleFrom(
                                         padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 5),
                                         backgroundColor: const Color(0xFFF0F0F0),
                                         side: const BorderSide(color: Color(0xFFD9D9D9), width: 0.50),
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10)
                                         )
                                       ),
                                      child: const Text('삭제')
                                   ),
                                  const SizedBox(width: 5,),
                                  ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 5),
                                          backgroundColor: const Color(0xFFF0F0F0),
                                          side: const BorderSide(color: Color(0xFFD9D9D9), width: 0.50),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          )
                                      ),
                                      child: const Text('구매하기')
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),

                ],
              ),
            );
          }
      ),
    );
  }
}
