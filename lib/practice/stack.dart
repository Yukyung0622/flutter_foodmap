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
        /* width: MediaQuery.of(context).size.width, //전체 색칠
        height: MediaQuery.of(context).size.height, //전체 색칠 */
        color: Colors.deepOrangeAccent,
        child: Stack(
          children: [
            /*Container(
              width: MediaQuery.of(context).size.width, //전체 색칠
              height: MediaQuery.of(context).size.height, //전체 색칠
              color: Colors.yellowAccent,
            ),*/
            Container(
              width: 200,
              height: 200,
              color: Colors.yellowAccent,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 50, left: 50),
              color: Colors.blueAccent,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 150, left: 150),
              color: Colors.greenAccent,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 250, left: 250),
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}