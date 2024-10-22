import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_products.dart';
import 'package:shoping/mock_data/mock_user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final userName = user[0].name;
    final userPhoto = user[0].photo;

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
            automaticallyImplyLeading: false,
              flexibleSpace:  Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$userName 님", style: const TextStyle(fontSize: 16),),
                    // Spacer(),
                    CircleAvatar(
                      backgroundImage: AssetImage(userPhoto),
                    ),
                  ],
                ),
              ),

            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),

    );
  }
}
