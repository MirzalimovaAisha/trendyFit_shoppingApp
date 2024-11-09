import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/mock_data/mock_user.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final item = user[0];
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF28182C)
            ),
            currentAccountPicture: SizedBox(
              width: 20,
              height: 20,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(item.photo),
              ),
            ),
              accountName: Text(item.name), 
              accountEmail: Text(item.email, style: const TextStyle(color: Color(0xFFBFBFBF)),)
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('쿠폰', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Text('310p', style: TextStyle(fontSize: 15, color: Color(0xFFE96E6E)),),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.history, color: Color(0xFF28182C),),
            title: const Text('주문 내역'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Color(0xFF28182C),),
            title: const Text('즐겨찾기'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Color(0xFF28182C),),
            title: const Text('알림 설정'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.support_agent, color: Color(0xFF28182C),),
            title: const Text('고객 지원'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Color(0xFF28182C),),
            title: const Text('설정'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Color(0xFF28182C),),
            title: const Text('앱 정보'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Color(0xFF28182C),),
            title: const Text('로그아웃'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
