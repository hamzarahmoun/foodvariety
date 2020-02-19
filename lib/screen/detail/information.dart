import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class Information extends StatelessWidget {
  final String image;
  final String duration;
  final String information;
  Information(this.image, this.duration, this.information);
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider1>(context);
    return text.buildInformationScreen(
        image, duration, information, Container());
  }
}
