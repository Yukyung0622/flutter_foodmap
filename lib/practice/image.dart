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
  String url =
      'https://upload.wikimedia.org/wikipedia/ko/4/4a/신짱구.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test title'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(
          image: NetworkImage(
            url,
          ),
        // child: Image(
          // image: NetworkImage(
          //   'https://upload.wikimedia.org/wikipedia/ko/4/4a/신짱구.png'
          // ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}