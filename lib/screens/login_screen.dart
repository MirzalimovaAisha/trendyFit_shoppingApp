import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:shoping/navigation_bar/navigation_bar.dart'; // 직접 만든 네비게이션 바 불러오기

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro_image.png'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.black.withOpacity(0.60),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                  padding: const  EdgeInsets.fromLTRB(23, 5, 13, 5),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.30)
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white
                      ),
                    ),
                  )
              ),
            ),
            Center(
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Color(0xFFB7B7B7),),
                        enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDEDEDE))
                        ),
                        contentPadding: EdgeInsets.fromLTRB(6, 5, 0, 5),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDEDEDE)), // 포커스 시 밑줄 색상
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color(0xFFB7B7B7),),
                        enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDEDEDE))
                        ),
                        contentPadding: EdgeInsets.fromLTRB(6, 5, 0, 5),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDEDEDE)), // 포커스 시 밑줄 색상
                        ),
                      ),
                    ),
                    const SizedBox(height: 70,),
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BottomNavigationBarApp(), // 네비게이션 바가 있는 페이지로 이동
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: Colors.white.withOpacity(0.15),
                              foregroundColor: Colors.white
                          ),
                          child: const Text('Sign In')
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: (){},
                            child: const Text('Create Account', style: TextStyle(fontSize: 11, color: Color(0xFFBEBEBE)),)
                        ),
                        TextButton(
                            onPressed: (){},
                            child: const Text('Forget Password', style: TextStyle(fontSize: 11, color: Color(0xFFBEBEBE)),)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
