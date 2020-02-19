import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:provider/provider.dart';

class ItalyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final italy = Provider.of<ItalyFood>(context);
    final text = Provider.of<FoodProvider>(context);

    return text.buildGridTile(
        italy.imageUrl,
        italy.title,
        italy.country,
        italy.codeFood,
        italy.ingredients,
        italy.steps,
        italy.duration,
        italy.information);
  }
}
