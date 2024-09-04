import 'package:flutter/material.dart';

class MapPage extends StatelessWidget{
  const MapPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
    ),
    );
  }
}