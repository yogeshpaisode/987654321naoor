import 'package:flutter/material.dart';

import 'package:stack/constants/constants.dart';

class ProductThumb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: <Widget>[
          new Container(
            height: 120.0,
            margin: new EdgeInsets.only(left: 46.0),
            decoration: new BoxDecoration(
              color: new Color(0xFF333366),
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Tomato", style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(220.0),
                      child: FadeInImage(
                        image: NetworkImage(tomatoImage),
                        fit: BoxFit.cover,
                        placeholder: AssetImage(
                            'assets/loading.gif'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
