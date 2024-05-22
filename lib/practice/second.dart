import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon :Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('test title'),
      ),
      body: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.lightBlueAccent,
            child: const Text('this is the second view'),
          ),
        ),
      );
  }
}
