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
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 4.0, //열
          mainAxisSpacing: 12.0, //행
        ),
        children: [
          postContainer(number: '1', colorData: Colors.deepOrangeAccent),
          postContainer(number: '2', colorData: Colors.cyanAccent),
          postContainer(number: '3', colorData: Colors.yellowAccent),
          postContainer(number: '4', colorData: Colors.greenAccent),
          postContainer(number: '1', colorData: Colors.deepOrangeAccent),
          postContainer(number: '2', colorData: Colors.cyanAccent),
          postContainer(number: '3', colorData: Colors.yellowAccent),
          postContainer(number: '4', colorData: Colors.greenAccent),

        ],
      ),
    );
  }

  Widget postContainer({String number = '0', Color colorData = Colors.cyan}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(child: Text('box $number')),
    );
  }
}