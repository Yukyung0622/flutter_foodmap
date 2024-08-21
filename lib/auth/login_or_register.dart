import 'package:contact/login/loginpage.dart';
import 'package:flutter/material.dart';

import '../login/register_page.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});
  
  @override
  State<LoginOrRegister> creatsState() => _LoginOrRegisterState();
}

  //initially, show login page
  bool showLoignPage = true;

  //toggle between login and register page
  void togglePages(){
    setState(() {
      showLoignPage = !showLoignPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showLoignPage) {
      return LoginPage(onTap: togglePages);
    } else{
      return RegisterPage(onTap: togglePages);
    }
  }
}
}
