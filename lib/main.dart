import 'package:flutter/material.dart';
import 'package:stack/ProductThumbs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organo"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb(),
          ProductThumb()
        ],
      ),
    );
  }
}



