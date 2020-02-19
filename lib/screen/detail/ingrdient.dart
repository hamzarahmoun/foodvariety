import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class Ingredient extends StatelessWidget {
  final String image;
  final List<String> ingredient;
  Ingredient(this.image, this.ingredient);
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider1>(context);
    return text.buildIngredientScreen(image, ingredient);
  }
}
