import 'package:contact/components/my_button.dart';
import 'package:contact/components/my_textfield.dart';
import 'package:contact/components/square_tile.dart';
import 'package:contact/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}




class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50),
              //로그인해주세요
              Text(
                '로그인 해주세요',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 25),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: '아이디',
                obscureText: false,
              ),

              SizedBox(height: 10),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: '비밀번호',
                obscureText: true,
              ),

              SizedBox(height: 10),

              //forgot password?
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),


              //sigh in button
              MyButton(
                onTap: signUserIn,
              ),

              SizedBox(height: 30),

              //or continue with
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                          'Or continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              //kakao,google,naver.apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'images/google.png'),
                  
                  SizedBox(width: 15),
                  
                  SquareTile(imagePath: 'images/apple.png'),

                  SizedBox(width: 20),

                  SquareTile(imagePath: 'images/kakao.png'),

                  SizedBox(width: 15),

                  SquareTile(imagePath: 'images/naver.png'),
                ],
              ),

              SizedBox(height: 30),

              //not a member? rgister now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      ),
    );
  }
}
