import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_category.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/widgets/appbar_widget.dart';
import 'package:shoping/widgets/home_drawer.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),

      appBar: AppbarWidget(),

      drawer: const HomeDrawer(),

      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 9),
                  child: Text(
                    'Category',
                    style: GoogleFonts.nanumPenScript(
                        fontSize: 32
                    ),
                  ),
                ),

                //======== category cards ===========
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 40),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 0,
                  ),
                  itemCount: categoryItems.length,
                  itemBuilder: (context, index) {
                    final item = categoryItems[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                              child: Image.asset(
                                item.photo,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Center(
                            child: Text(
                              item.name,
                              style: GoogleFonts.kranky(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
