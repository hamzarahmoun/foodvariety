import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/japanfood.dart';
import 'package:provider/provider.dart';

class JapanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final japan = Provider.of<JapanFood>(context);
    final text = Provider.of<FoodProvider>(context);

    return text.buildGridTile(
        japan.imageUrl, japan.title, japan.country, japan.codeFood);
  }
}
