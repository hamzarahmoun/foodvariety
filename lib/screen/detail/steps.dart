import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class Steps extends StatelessWidget {
  final String image;
  final List<String> steps;

  Steps(this.image, this.steps);

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider1>(context);
    return text.buildStepScreen(image, steps);
  }
}
