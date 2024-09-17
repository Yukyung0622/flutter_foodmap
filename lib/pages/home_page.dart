import 'package:contact/components/my_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../main.dart';


class HomePage extends StatelessWidget{
  const HomePage ({super.key});

  // void logout(){
  //   FirebaseAuth.instance.signOut();
  // }
  //
  // void logout() {
  //   runApp(MyApp());
  // }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("FoodMap"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        // actions:[
        //   //logout button
        //   IconButton(
        //     onPressed: logout,
        //     icon: Icon(Icons.logout),
        //   )
        // ]

      ),
      drawer: MyDrawer(),
    );
  }
}