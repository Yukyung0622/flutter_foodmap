import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('App'),
          elevation: 15.0,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text('App'),
            Icon(Icons.mail)
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.grey,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Icon(Icons.phone),
                Icon(Icons.mail),
                Icon(Icons.contact_page)
              ],
            ),,
          ),
        )
      )
    );
  }
}

