import 'package:flutter/material.dart';

import 'package:calculator/addition.dart';
import 'package:calculator/subtraction.dart';
import 'package:calculator/multiplication.dart';
import 'package:calculator/division.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator-Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Addition',),
                Tab(text: 'Subtraction',),
                Tab(text: 'Multiplication',),
                Tab(text: 'Division',),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              AdditionTab(),
              SubtractionTab(),
              MultiplicationTab(),
              DivisionTab(),
            ],
          ),
        ),
      ),
    );
  }
}
