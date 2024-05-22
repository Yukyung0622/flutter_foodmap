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
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () => print('elevated button'),
                child: const Text('elevated button'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => print('textbutton'),
                child: const Text('text button'),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print('outlined button'),
                child: const Text('outlined button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}