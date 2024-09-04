import 'package:contact/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:contact/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});
  
  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

  //initially, show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else{
      return RegisterPage(onTap: togglePages);
    }
  }

