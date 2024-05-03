import 'package:flutter/material.dart';

class Bottom extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
              Icons.home,
              size: 18,
            ),
            child: Text('home', style: TextStyle(fontSize:9),),
        ),
      ],
    ),
    ),
    );
  }
}