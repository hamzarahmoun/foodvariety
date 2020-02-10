import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:provider/provider.dart';

class SwedenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sweden = Provider.of<SwedenFood>(context);
    final text = Provider.of<FoodProvider>(context);

    return text.buildGridTile(
        sweden.imageUrl, sweden.title, sweden.country, sweden.codeFood);
  }
}
