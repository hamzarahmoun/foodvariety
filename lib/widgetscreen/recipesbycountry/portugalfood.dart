import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:provider/provider.dart';

class PortugalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final portugal = Provider.of<PortugalFood>(context);
    final text = Provider.of<FoodProvider>(context);

    return text.buildGridTile(
        portugal.imageUrl, portugal.title, portugal.country, portugal.codeFood);
  }
}
