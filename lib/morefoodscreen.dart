import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:provider/provider.dart';

class MoreScreen extends StatelessWidget {
  final String image;
  final String title;
  final String image1;
  final String title1;
  final String image2;
  final String title2;
  final String image3;
  final String title3;
  final String image4;
  final String title4;
  MoreScreen(this.image, this.title, this.image1, this.title1, this.image2,
      this.title2, this.image3, this.title3, this.image4, this.title4);
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider>(context);
    return SafeArea(
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
                    text.buildStackMoreView(title, image),
                    text.buildStackMoreView(title1, image1),
                    text.buildStackMoreView(title2, image2),
                    text.buildStackMoreView(title3, image3),
                    text.buildStackMoreView(title4, image4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
