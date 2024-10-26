import 'package:flutter/material.dart';
import 'package:shoping/mock_data/mock_user.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = user[0].name;
    final userPhoto = user[0].photo;

    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text('$userName 님'),

              ],
            )
          ],
        ),
      ),
    );
  }
}
