import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
//  var page = [
//    Container(
//      color: Colors.red,
//      height: double.infinity,
//      width: double.infinity,
//    ),
//    Container(
//      color: Colors.blue,
//      height: double.infinity,
//      width: double.infinity,
//    ),
//  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListWheelScrollView(
      itemExtent: 42,
      diameterRatio: 10,
      magnification: 2,
      clipToSize: true,
      useMagnifier: true,
      offAxisFraction: 2,
      renderChildrenOutsideViewport: true,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.red,
        ),
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.blue,
        ),
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.blue,
        ),
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.blue,
        ),
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.blue,
        ),
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.blue,
        )
      ],
    ));
  }
}
