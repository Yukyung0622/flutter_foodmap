import 'package:contact/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp() as Widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test title'),
      ),
      /*body: Center(
        child: TextButton(
          onPressed: () => print('TextButton clicked'),
          child:const Text('TextButton'),
        ),
      ), */
      body: Center(
        child: GestureDetector(
          onTap: () => print('GesturDetector used.'),
          child: Container(
            width: 120,
            height: 120,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}