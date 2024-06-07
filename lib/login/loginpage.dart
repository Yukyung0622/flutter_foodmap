import 'package:contact/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child:Column(
            children: const [
              SizedBox(height: 50),
        //logo
              Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
        //로그인해주세요
              Text(
                  '로그인 해주세요',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

          const SizedBox(height: 25),

        //username textfield
              

        //password textfield

        //forgot password?

        //sigh in button

        //or continue with

        //kakao,google,naver.apple sign in buttons

        //not a member? rgister now
        ],
      ),
      ),
      ),
    );
  }
}