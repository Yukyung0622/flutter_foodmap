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

  final postList = [
    {
      'title' :  'Sample Title 1',
      'color' :  Colors.pink,
    },
    {
      'title' :  'Sample Title 2',
      'color' :  Colors.yellowAccent,
    },
    {
      'title' :  'Sample Title 3',
      'color' :  Colors.grey,
    },
    {
      'title' :  'Sample Title 4',
      'color' :  Colors.greenAccent,
    },
    {
      'title' :  'Sample Title 5',
      'color' :  Colors.amber,
    },
    {
      'title' :  'Sample Title 6',
      'color' :  Colors.blueAccent,
    },
    {
      'title' :  'Sample Title 7',
      'color' :  Colors.cyan,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test title'),
      ),
      body: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (BuildContext con, int index) {
            return postContainer(
            title: postList[index]['title'] as String,
            colorData : postList[index]['color'] as Color,
            );
          },
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