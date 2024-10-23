import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_popular.dart';

class CarouselWidget extends StatelessWidget {
  @override

  int _currentIndex = 0;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          child: CarouselSlider(
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true
              ),
            items: popularItem.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: 350,
                    // margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const[
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        item.photo,
                        fit: BoxFit.cover, // 이미지 크기를 맞춤
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
