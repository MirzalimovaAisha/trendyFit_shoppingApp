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

      body: SafeArea(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 50,
            ),
            itemCount: menItems.length,
            itemBuilder: (context, index) {
              return Container(
                // width: 151,
                // height: 300,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      menItems[index].photo,
                      height: 100,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            menItems[index].name
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
