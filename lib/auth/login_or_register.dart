import 'package:contact/login/loginpage.dart';
import 'package:flutter/cupertino.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});


  @override
  State<LoginOrRegister> creatsState() => _LoginOrRegisterState();
}

class LoginOrRegister extends State<LoginOrRegister> {

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