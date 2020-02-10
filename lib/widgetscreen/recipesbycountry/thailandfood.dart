import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:provider/provider.dart';

class ThailandWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final thailand = Provider.of<ThailandFood>(context);
    final text = Provider.of<FoodProvider>(context);
    return text.buildGridTile(
        thailand.imageUrl, thailand.title, thailand.country, thailand.codeFood);
  }
}
