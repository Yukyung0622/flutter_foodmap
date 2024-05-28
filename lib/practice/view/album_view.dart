import 'package:contact/practice/provider/album_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/album.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late List<Album> albumList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('procider 패턴실습')),
      body: Consumer<AlbumProvider>(
        builder: ( context, provider, child) {
          albumList = provider.getAlbumLsit();
          return ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (context, index){
              return Container(
                padding: const EdgeInsets.all(15),
                child:
                    Text("${albumList[index].id} : ${albumList[index].title}"),
              );
            },
          );
        },
      ),
    );
  }
}
