import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:provider/provider.dart';

class ChinaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final china = Provider.of<ChinaFood>(context);
    final text = Provider.of<FoodProvider>(context);
    return text.buildGridTile(
        china.imageUrl, china.title, china.country, china.codeFood);
  }
}
