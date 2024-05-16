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
      body: Container(
        alignment: Alignment.topLeft, //정렬
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //column 메인 축 세로!
          crossAxisAlignment: CrossAxisAlignment.center, //column 메인 가로 축
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2, //전체화면에 색 넣을때
                  height: 200,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ],
        ), //열과 행
      ),
    );
  }
}
