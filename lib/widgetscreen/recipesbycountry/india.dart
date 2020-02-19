import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/indiafood.dart';
import 'package:provider/provider.dart';

class IndiaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final india = Provider.of<IndiaFood>(context);
    final text = Provider.of<FoodProvider>(context);

    return text.buildGridTile(
        india.imageUrl,
        india.title,
        india.country,
        india.codeFood,
        india.ingredients,
        india.steps,
        india.duration,
        india.information);
  }
}
