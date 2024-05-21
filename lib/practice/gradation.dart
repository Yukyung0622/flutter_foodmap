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
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [
          //     Colors.blue[100] as Color,
          //     Colors.blue[300] as Color,
          //     Colors.blue[500] as Color,
          //   ],
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          //   stops: const [0.1, 0.4, 0.9],
          // ),
          gradient: RadialGradient(
            center: Alignment.center,
            colors: [
              Colors.amber[100] as Color,
              Colors.amber[300] as Color,
              Colors.amber[500] as Color,
            ],
            stops: const [0.1, 0.4, 0.9],
            radius: (1.0),
          ),
        ),
      ),
    );
  }
}