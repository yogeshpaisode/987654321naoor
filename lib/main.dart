import 'package:flutter/material.dart';
import 'package:stack/ProductThumbs.dart';
import 'package:stack/constants/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  final appColor = Color(0xFF4da361);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Organo"),
        centerTitle: true,
        backgroundColor: appColor,
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        floatingActionButton: FloatingActionButton(
          backgroundColor: appColor,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Icon(Icons.shopping_cart),
              Positioned(
                right: 8,
                top: 10,
                child: CircleAvatar(
                  child: Text("5"),
                  backgroundColor: Colors.red,
                  radius: 10.4,
                ),
              )

            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: appColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ) ,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ProductThumb(imageTitle: "Tomato", imageUrl: tomatoImage),
          ProductThumb(imageTitle: "Spinach", imageUrl: spinach),
          ProductThumb(imageTitle: "Lady Finger", imageUrl: ladyFinger),
          ProductThumb(imageTitle: "Onion", imageUrl: onion),
          ProductThumb(imageTitle: "Flower", imageUrl: flower),
          ProductThumb(imageTitle: "Cabbage", imageUrl: cabbage),
          ProductThumb(imageTitle: "Capsicum", imageUrl: capsicum),
        ],
      ),
    );
  }
}



