import 'package:contact/components/my_button.dart';
import 'package:contact/components/my_textfield.dart';
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
   void signUserIn(){}


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
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

        //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText:true,
              ),

              const SizedBox(height: 10),

        //forgot password?
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          'forgot password?',
                          style: TextStyle(color:Colors.grey),
                      ),
                    ],
                  ),
              ),

               const SizedBox(height: 25),


        //sigh in button
              MyButton(
                  onTap: signUserIn,
              ),

              const SizedBox(height: 25),

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