import 'dart:math' as math;

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/screen/detail/information.dart';
import 'package:foodvariety/screen/detail/ingrdient.dart';
import 'package:foodvariety/screen/detail/steps.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PopularFoodView extends StatefulWidget {
  static const routeName = 'afv';
  final String title;
  final String country;
  final String image;
  final double rating;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;
  PopularFoodView(
    this.title,
    this.image,
    this.country,
    this.rating,
    this.ingredients,
    this.steps,
    this.duration,
    this.information,
  );
  @override
  _PopularFoodViewState createState() => _PopularFoodViewState();
}

class _PopularFoodViewState extends State<PopularFoodView>
    with TickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildStack(),
      ),
    );
  }

  Widget buildContainer(String image, double value, Widget widget) {
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, value, curve: Curves.easeOut),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => widget));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Colors.black54,
                  ]),
                  color: Colors.white,
                  shape: BoxShape.circle),
              child: Image.asset(
                image,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStack() {
    return Stack(
      children: <Widget>[
        Hero(
          tag: widget.image,
          child: ExtendedImage.network(
            widget.image,
            fit: BoxFit.fill,
            height: double.infinity,
          ),
        ),
        SafeArea(
          child: GridTile(
            header: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.black26,
                      child: AnimatedBuilder(
                          animation: _controller,
                          builder: (ctx, i) {
                            return Transform(
                              alignment: FractionalOffset.center,
                              transform: Matrix4.rotationZ(
                                  _controller.value * 0.5 * math.pi),
                              child: Icon(
                                _controller.isDismissed
                                    ? Icons.more_vert
                                    : Icons.close,
                                color: _controller.isDismissed
                                    ? Colors.white
                                    : Colors.redAccent,
                              ),
                            );
                          }),
                      onPressed: () {
                        if (_controller.isDismissed) {
                          _controller.forward();
                        } else {
                          _controller.reverse();
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                buildContainer('assets/ingredient.png', 0.1,
                    Ingredient(widget.image, widget.ingredients)),
                SizedBox(
                  height: 10,
                ),
                buildContainer(
                    'assets/step.png', 0.5, Steps(widget.image, widget.steps)),
                SizedBox(
                  height: 10,
                ),
                buildContainer(
                    'assets/info.png',
                    0.9,
                    Information(
                        widget.image, widget.duration, widget.information)),
              ],
            ),
            child: Text(''),
            footer: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.black54,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FittedBox(
                            child: Text(
                              widget.country,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              widget.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: SmoothStarRating(
                                color: Colors.yellow,
                                rating: widget.rating,
                                size: 40,
                                borderColor: Colors.yellow,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
