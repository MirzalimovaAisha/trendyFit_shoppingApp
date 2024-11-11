import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shoping/screens/home_screen.dart';
import 'package:shoping/screens/category_screen.dart';
import 'package:shoping/screens/profile_screen.dart';
import 'package:shoping/screens/bookmark_screen.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    const HomeScreen(),
    CategoryScreen(),
    const SaveScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: IndexedStack(
        index: _page,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color(0xFF28182C),
        color: const Color(0xFF28182C),
        animationDuration: const Duration(milliseconds: 400),
        items: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Image.asset('assets/icons/home.png', width: 20, height: 20, color: Colors.white),
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Image.asset('assets/icons/menu.png', width: 20, height: 20, color: Colors.white),
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Image.asset('assets/icons/heart.png', width: 20, height: 20, color: Colors.white),
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Image.asset('assets/icons/profile.png', width: 20, height: 20, color: Colors.white),
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),

    );
  }
}

