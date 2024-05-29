import 'package:contact/main.dart';
import 'package:contact/practice/locator/locator.dart';
import 'package:contact/practice/service/album_service.dart';
import 'package:flutter/material.dart';

import 'model/album.dart';

void main(){
  initLocator();
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
    final AlbumService _service = locator<AlbumService>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('test title'),
      ),
      body: FutureBuilder(
        future: _service.fetchAlbums(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            List<Album> ? list = snapshot.data;
            return ListView.builder(
              itemCount: list?.length,
              itemBuilder: (context, index){
                return Container(
                  padding: const EdgeInsets.all(15),
                  child: Text("${list?[index].id}:${list?[index].title}"),
                );
              },
            );
            }else if (snapshot.hasError){
            return const Center(
              child: Text("error"),
            );
          }else{
            return const Center(child:CircularProgressIndicator(strokeWidth: 2,));
          }
        }
      ),
    );
  }
}