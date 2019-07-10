import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.scanner)),
                Tab(icon: Icon(Icons.create))
              ],
            )),
            body: TabBarView(
              children: <Widget>[],
            ),
          )),
    );
  }
}
