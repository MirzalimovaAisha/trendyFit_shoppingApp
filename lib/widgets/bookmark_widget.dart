import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_bookmark.dart';
import 'package:shoping/screens/product_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(item: item)));
              // },
              child: Column(
                children: [
                  Container(
                    height: 92,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
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
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(item.photo),fit: BoxFit.cover),
                          ),
                        ),
                        // const SizedBox(width: 7,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 3, 7, 0),
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
                              const SizedBox(height: 10,),
                              Text(
                                  '${item.price}원',
                                  style: GoogleFonts.notoSansKr(
                                    color: const Color(0xFF444444),
                                    fontSize: 15,
                                  )
                              ),

                              const
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 5,)
                ],
              ),
            );
          }
      ),
    );
  }
}
