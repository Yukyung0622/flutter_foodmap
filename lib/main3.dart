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
          appBar: AppBar( actions: [Icon(Icons.star),Icon(Icons.star),], title: Text('aa'),),
          body: SizedBox(
           child: TextButton(
              child: Text('text'),
              onPressed: (){},
           )
          )
        )
     );
    }
  }
