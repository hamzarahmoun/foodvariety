import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:provider/provider.dart';

class MoroccoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final morocco = Provider.of<MoroccoFood>(context);
    final text = Provider.of<FoodProvider>(context);
    return text.buildGridTile(
        morocco.imageUrl, morocco.title, morocco.country, morocco.codeFood);
  }
}
