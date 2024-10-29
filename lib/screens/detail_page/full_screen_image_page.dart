import 'package:flutter/material.dart';

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        // onTap: () => Navigator.pop(context),
        child: Center(
          child: Image.asset(
            imageUrl,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
