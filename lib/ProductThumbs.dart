import 'package:flutter/material.dart';

class ProductThumb extends StatelessWidget {
  final String imageUrl;
  final String imageTitle;

  ProductThumb({
    this.imageTitle,
    this.imageUrl
});
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
              padding: const EdgeInsets.only(left: 2.0, right: 2.0, top: 2.0),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0),
                    child: true ? LinearProgressIndicator(
                      backgroundColor: Colors.redAccent,
                    ) : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(this.imageTitle, style: TextStyle(color: Colors.white, fontSize: 20),),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(220.0),
                      child: FadeInImage(
                        image: NetworkImage(this.imageUrl),
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
