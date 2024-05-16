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
      body: ListView(
        //scrollDirection: Axis.horizontal, //가로로 만들기(오른쪽으로 슬라이드)
        //scrollDirection: Axis.horizontal, // 현재는 이렇게 기본값으로 되어있음
        children: [
          postContainer(title: 'title 1' , colorData: Colors.yellowAccent),
          postContainer(title: 'title 2', colorData: Colors.blueAccent),
          postContainer(title: 'title 3', colorData: Colors.pinkAccent),
          postContainer(title: 'title 4', colorData: Colors.greenAccent),
          postContainer(title: 'title 5'),
        ],
      ),
    );
  }
  Widget postContainer({String title = '', Color colorData = Colors.grey}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            '$title',
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        )
      ],
    );
  }
}