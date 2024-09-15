import 'package:contact/components/my_button.dart';
import 'package:contact/components/my_textfield.dart';
import 'package:contact/components/square_tile.dart';
import 'package:contact/main.dart';
import 'package:flutter/material.dart';
import '../helper/helper_functions.dart';



class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

  class _RegisterPageState extends State<RegisterPage>{
  //text editing controller
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPwController = TextEditingController();

  //register method
  void registerUser() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) =>
      const Center(
        child: CircularProgressIndicator(),
      ),
    );
    //make sure passwords match
    if (passwordController.text != confirmPwController) {
      //pop lodaing circle
      Navigator.pop(context);
      //show error message to user
      displayMessageToUser("비밀번호가 틀렸습니다.", context);
    }
    //if password do match
    else {
      //try creating the user
      try {
        //create the user
        final userCredential =
            awit FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text
        );
        //pop loading circle
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        //pop loading circle
        Navigator.pop(context);

        //display error message to user
        displayMessageToUser(e.code, context);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                //logo
                Icon(
                  Icons.lock_open,
                  size: 80,
                ),

                SizedBox(height: 10),
                //로그인해주세요
                Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 1),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 1),

                //email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 1),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 1),

                //password textfield
                MyTextField(
                  controller: confirmPwController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                SizedBox(height: 1),

                //forgot password?
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
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

                SizedBox(height: 20),

                //sigh in button
                MyButton(
                  onTap: registerUser,
                ),

                SizedBox(height: 10),

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
                      'Already have an acoount?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          'Login Here',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        )
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




