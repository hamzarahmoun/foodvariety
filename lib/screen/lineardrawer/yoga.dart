import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foodvariety/provider/drawerprovide/yogabenefit.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class YogaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final yoga = Provider.of<YogaFuture>(context);
    final text = Provider.of<FoodProvider>(context);
    final food = Provider.of<FoodProvider1>(context);
    return SafeArea(
      child: InnerDrawer(
          onTapClose: true,
          swipe: true,
          leftChild: text.buildDrawer(),
          scaffold: Scaffold(
            body: ListView.builder(
                itemCount: yoga.yoga.length,
                itemBuilder: (ctx, i) {
                  return food.buildCard(yoga.yoga[i].image, yoga.yoga[i].title,
                      yoga.yoga[i].description, yoga.yoga[i].suite);
                }),
          )),
    );
  }
}
