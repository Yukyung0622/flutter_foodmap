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
            appBar: AppBar(title: Text('App')),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity, height: 100, color: Colors.deepOrangeAccent,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text('app123'),
              ),
            ),
        )
    );
  }
}