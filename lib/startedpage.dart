import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodvariety/screen/homepage.dart';
import 'package:progress_indicators/progress_indicators.dart';

class StartedPage extends StatefulWidget {
  @override
  StartedPageState createState() => StartedPageState();
}

class StartedPageState extends State<StartedPage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (ctx) => HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff32a05f),
                  Colors.red,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              image: DecorationImage(
                image: AssetImage('assets/papa.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.red,
                  BlendMode.modulate,
                ),
              ),
            ),
          ),
          Center(
            child: JumpingText(
              'Loading...',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
