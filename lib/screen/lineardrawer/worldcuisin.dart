import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foodvariety/provider/drawerprovide/worldcuisin.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class WorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final world = Provider.of<WorldFoodFuture>(context);
    final text = Provider.of<FoodProvider>(context);
    final food = Provider.of<FoodProvider1>(context);
    return SafeArea(
      child: InnerDrawer(
          onTapClose: true,
          swipe: true,
          leftChild: text.buildDrawer(),
          scaffold: Scaffold(
            body: ListView.builder(
                itemCount: world.worldFood.length,
                itemBuilder: (ctx, i) {
                  return food.buildCard(
                      world.worldFood[i].image,
                      world.worldFood[i].title,
                      world.worldFood[i].description,
                      world.worldFood[i].suite);
                }),
          )),
    );
  }
}
