import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shoping/screens/home_screen.dart';
import 'package:shoping/screens/menu_screen.dart';
import 'package:shoping/screens/profile_screen.dart';
import 'package:shoping/screens/save_screen.dart';

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
    const MenuScreen(),
    const SaveScreen(),
    const ProfileScreen()
    // const
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
        buttonBackgroundColor: const Color(0xFF301709),
        color: const Color(0xFF301709),
        animationDuration: const Duration(milliseconds: 400),
        // key: _bottomNavigationKey,
        items: const [
          Icon(Icons.home_outlined, color: Colors.white,),
          Icon(Icons.menu, color: Colors.white,),
          Icon(Icons.bookmark_outline, color: Colors.white,),
          Icon(Icons.person_outline_outlined, color: Colors.white,),
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

