import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/screens/home/home_all_tab.dart';
import 'package:shoping/screens/home/home_best_tab.dart';
import 'package:shoping/screens/home/home_new_tab.dart';
import 'package:shoping/screens/home/home_popular_tab.dart';
import 'package:shoping/widgets/appbar_widget.dart';
import 'package:shoping/widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppbarWidget(),
        drawer: HomeDrawer(),
        body: Column(
          children: [
            TabBar.secondary(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'All',),
                Tab(text: 'Best',),
                Tab(text: 'New',),
                Tab(text: 'Popular',),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  HomeAllTab(),
                  HomeBestTab(),
                  HomeNewTab(),
                  HomePopularTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
