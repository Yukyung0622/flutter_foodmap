import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatelessWidget{
  const HomePage ({super.key});

  // void logout(){
  //   FirebaseAuth.instance.signOut();
  // }

  void main() {
    runApp(MyApp());
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,
        actions:[
          //logout button
          // IconButton(
          //   onPressed: logout,
          //   icon: Icon(Icons.logout),
          // )
        ]

      ),
    )
  }
}