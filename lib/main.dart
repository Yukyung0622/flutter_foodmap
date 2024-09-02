import 'package:contact/auth/login_or_register.dart';
import 'package:contact/pages/home_page.dart';
import 'package:contact/pages/map_page.dart';
import 'package:contact/pages/users_page.dart';
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
    var darkMode;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes:{
        '/login_register_page':(context) => const LoginOrRegister(),
        '/home_page':(context) => const HomePage(),
        '/map_page':(context) => const MapPage(),
        '/users_page':(context) => const UsersPage(),
      }
    );
  }
}
