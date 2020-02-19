import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:provider/provider.dart';

class AustraliaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final australia = Provider.of<AustraliaFood>(context);
    final text = Provider.of<FoodProvider>(context);
    return text.buildGridTile(
      australia.imageUrl,
      australia.title,
      australia.country,
      australia.rating,
      australia.ingredients,
      australia.steps,
      australia.duration,
      australia.information,
    );
  }
}
