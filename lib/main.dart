import 'package:flutter/material.dart';
import 'package:shoping/navigation_bar/navigation_bar.dart';
import 'package:shoping/screens/bookmark_screen.dart';
import 'package:shoping/screens/cart_screen.dart';
import 'package:shoping/screens/category_screen.dart';
import 'package:shoping/screens/detail_page/full_screen_image_page.dart';
import 'package:shoping/screens/detail_page/product_detail_page.dart';
import 'package:shoping/screens/home/home_all_tab.dart';
import 'package:shoping/screens/home/home_best_tab.dart';
import 'package:shoping/screens/home/home_new_tab.dart';
import 'package:shoping/screens/home/home_popular_tab.dart';
import 'package:shoping/screens/home/home_screen.dart';
import 'package:shoping/screens/intro_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/screens/login_screen.dart';
import 'package:shoping/screens/profile_screen.dart';
import 'package:shoping/screens/search_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const IntroScreen(),
        '/login' : (context) => const LoginScreen(),
        '/home' : (context) => const HomeScreen(),
        '/home_all' : (context) => const HomeAllTab(),
        '/home_best' : (context) => const HomeBestTab(),
        '/home_new' : (context) => const HomeNewTab(),
        '/home_popular' : (context) => const HomePopularTab(),
        '/bookmark' : (context) => const BookmarkScreen(),
        '/cart' : (context) => const CartScreen(),
        '/category' : (context) => CategoryScreen(),
        '/profile' : (context) => const ProfileScreen(),
        '/search' : (context) => const SearchScreen(),
        '/navigation_bar' : (context) => const BottomNavigationBarApp(),
        // '/product_detail' : (context) => const ProductDetailPage(item: item),
        // '/full_screen_image' : (context) => const FullScreenImagePage(imageUrl: imageUrl),
      },
    );
  }
}
