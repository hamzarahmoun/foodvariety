import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:provider/provider.dart';

class FranceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final france = Provider.of<FranceFood>(context);
    final text = Provider.of<FoodProvider>(context);
    return text.buildGridTile(
        france.imageUrl, france.title, france.country, france.codeFood);
  }
}
