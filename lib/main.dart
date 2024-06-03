import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Delivery UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness : Brightness.dark,
          primaryColor: Colors.black,
          hintColor: Colors.white,
      ),
        home: DefaultTabController(
            length:4,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children:<Widget>[
                    Container(child: Center(child: Text('search'),),),
                    Container(child: Center(child: Text('save'),),),
                ],
              ),
            ),
        ),
      );
  }
}
