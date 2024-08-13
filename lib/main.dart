import 'package:contact/login/loginpage.dart';
import 'package:contact/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:contact/theme/dark_mode.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightMode,
    );
  }
}
