import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PopularFoodView extends StatefulWidget {
  static const routeName = 'afv';
  final String title;
  final String country;
  final String image;
  final double rating;
  PopularFoodView(this.title, this.image, this.country, this.rating);

  @override
  _PopularFoodViewState createState() => _PopularFoodViewState();
}

class _PopularFoodViewState extends State<PopularFoodView> {
  Widget _buildStack() {
    return Stack(
      children: <Widget>[
        ExtendedImage.network(
          widget.image,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        SafeArea(
          child: GridTile(
            header: Row(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.red,
                    ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildStack(),
      ),
    );
  }
}
