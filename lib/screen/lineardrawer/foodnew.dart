import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foodvariety/provider/drawerprovide/foodnew.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class FoodNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final food = Provider.of<FoodNewsFuture>(context);
    final text = Provider.of<FoodProvider>(context);
    final food1 = Provider.of<FoodProvider1>(context);
    return SafeArea(
      child: InnerDrawer(
          onTapClose: true,
          swipe: true,
          leftChild: text.buildDrawer(),
          scaffold: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Scaffold(
              body: ListView.builder(
                  itemCount: food.foodNews.length,
                  itemBuilder: (ctx, i) {
                    return food1.buildCard(
                      food.foodNews[i].image,
                      food.foodNews[i].title,
                      food.foodNews[i].description,
                      food.foodNews[i].suite,
                    );
                  }),
            ),
          )),
    );
  }
}
