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
          child: Center(
            child: TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext con) {
                  return AlertDialog(
                    title: const Text('Dialog title'),
                    content: Container(
                      child: const Text(
                          'dialog content'
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('yes')
                      ),
                      TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('close')
                      ),
                    ],
                  );
                },
                );
              },
              child: const Text('button'),
            ),
          ),
        ),
      );
  }
}