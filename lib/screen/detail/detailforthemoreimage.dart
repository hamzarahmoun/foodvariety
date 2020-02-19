import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class MoreDetail extends StatelessWidget {
  final String title;
  final String image;
  final String country;
  final double rating;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;
  MoreDetail(this.title, this.image, this.country, this.rating,
      this.ingredients, this.steps, this.duration, this.information);
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider1>(context);
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(
            child: text.buildInformationScreen(
                image,
                duration,
                information,
                Positioned(
                  bottom: 0.1,
                  right: 0.1,
                  child: Image.network(
                      'https://www.animatedimages.org/data/media/111/animated-arrow-image-0104.gif'),
                )),
          ),
          Container(
            child: text.buildIngredientScreen(image, ingredients),
          ),
          Container(
            child: text.buildStepScreen(image, steps),
          ),
        ],
      ),
    );
  }
}
