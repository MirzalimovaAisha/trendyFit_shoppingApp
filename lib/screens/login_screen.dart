import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
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
              )),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.black.withOpacity(0.60),
              ),
            ),
            
            
            Center(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 24),),
                        const SizedBox(height: 40,),
                        const TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Color(0xFFB7B7B7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFDEDEDE))),
                            contentPadding: EdgeInsets.fromLTRB(6, 5, 0, 5),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFDEDEDE)), // 포커스 시 밑줄 색상
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(0xFFB7B7B7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFDEDEDE))),
                            contentPadding: EdgeInsets.fromLTRB(6, 5, 0, 5),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFDEDEDE)), // 포커스 시 밑줄 색상
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.restorablePushNamed(context, '/navigation_bar');
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  backgroundColor: Colors.white.withOpacity(0.15),
                                  foregroundColor: Colors.white),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(fontSize: 18),
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Create Account',
                                  style: TextStyle(color: Color(0xFFBEBEBE)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forget Password',
                                  style: TextStyle(color: Color(0xFFBEBEBE)),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
