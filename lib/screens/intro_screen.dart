import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoping/screens/login_screen.dart'; // 다음 페이지로 이동하는 화면 (LoginScreen)

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Container(
              color: Colors.black.withOpacity(0.60),
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const Text('Welcome to', style: TextStyle(color: Colors.white, fontSize: 24),),
                Text('TrendyFit',
                  style: GoogleFonts.italiana(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                    ),
                  ),)
              ],
            ),
          ),
          // 로그인 버튼이랑 회원가입 버튼
          Positioned(
            bottom: 50,
            left: 16,
            right: 16,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.restorablePushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        backgroundColor: Colors.white.withOpacity(0.15000000596046448),
                        foregroundColor: Colors.white
                      ),
                      child: const Text('Login', style: TextStyle(fontSize: 18),)
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: Colors.white.withOpacity(0.15000000596046448),
                          foregroundColor: Colors.white
                      ),
                      child: const Text('Sign up', style: TextStyle(fontSize: 18),)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
