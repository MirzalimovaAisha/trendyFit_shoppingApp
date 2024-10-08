import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: AppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Icon(Icons.notifications_none_outlined, color: Color(0xFF858585)),
                    SizedBox(width: 16),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user/1.jpg'),
                    ),
                  ],
                ),
              ),
            ],
            iconTheme: const IconThemeData(
              color: Color(0xFF858585),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      drawer: const Drawer(),
      body: ListView.builder(
        itemCount: menItems.length,  // 아이템 수 설정
        itemBuilder: (context, index) {
          // 인덱스를 안전하게 사용
          if (index < menItems.length) {
            return ListTile(
              title: Text(menItems[index].name),
              subtitle: Text('${menItems[index].price}￦'),
              leading: Image.asset(menItems[index].photo),
            );
          } else {
            return const SizedBox(); // 인덱스가 범위를 초과한 경우 빈 공간 반환
          }
        },
      ),
    );
  }
}
