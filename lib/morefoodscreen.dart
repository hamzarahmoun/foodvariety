import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:provider/provider.dart';

class MoreScreen extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final double rating;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;
  final String image1;
  final String title1;
  final String country1;
  final double rating1;
  final List<String> ingredients1;
  final List<String> steps1;
  final String duration1;
  final String information1;
  final String image2;
  final String title2;
  final String country2;
  final double rating2;
  final List<String> ingredients2;
  final List<String> steps2;
  final String duration2;
  final String information2;
  final String image3;
  final String title3;
  final String country3;
  final double rating3;
  final List<String> ingredients3;
  final List<String> steps3;
  final String duration3;
  final String information3;
  final String image4;
  final String title4;
  final String country4;
  final double rating4;
  final List<String> ingredients4;
  final List<String> steps4;
  final String duration4;
  final String information4;
  MoreScreen(
    this.image,
    this.title,
    this.country,
    this.rating,
    this.ingredients,
    this.steps,
    this.duration,
    this.information,
    this.image1,
    this.title1,
    this.country1,
    this.rating1,
    this.ingredients1,
    this.steps1,
    this.duration1,
    this.information1,
    this.image2,
    this.title2,
    this.country2,
    this.rating2,
    this.ingredients2,
    this.steps2,
    this.duration2,
    this.information2,
    this.image3,
    this.title3,
    this.country3,
    this.rating3,
    this.ingredients3,
    this.steps3,
    this.duration3,
    this.information3,
    this.image4,
    this.title4,
    this.country4,
    this.rating4,
    this.ingredients4,
    this.steps4,
    this.duration4,
    this.information4,
  );
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              ExtendedImage.network(
                image,
                fit: BoxFit.fill,
                height: double.infinity,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3,
                  sigmaY: 3,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView(
                    children: <Widget>[
                      text.buildStackMoreView(title, image, country, rating,
                          ingredients, steps, duration, information),
                      text.buildStackMoreView(title1, image1, country1, rating1,
                          ingredients1, steps1, duration1, information1),
                      text.buildStackMoreView(title2, image2, country2, rating2,
                          ingredients2, steps2, duration2, information2),
                      text.buildStackMoreView(title3, image3, country3, rating3,
                          ingredients3, steps3, duration3, information3),
                      text.buildStackMoreView(title4, image4, country4, rating4,
                          ingredients4, steps4, duration4, information4),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
