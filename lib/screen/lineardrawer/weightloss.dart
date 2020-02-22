import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foodvariety/provider/drawerprovide/weightloss.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class WeightLoss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weight = Provider.of<WeightFuture>(context);
    final text = Provider.of<FoodProvider>(context);
    final food = Provider.of<FoodProvider1>(context);
    return SafeArea(
      child: InnerDrawer(
          onTapClose: true,
          swipe: true,
          leftChild: text.buildDrawer(),
          scaffold: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Scaffold(
              body: ListView.builder(
                  itemCount: weight.weight.length,
                  itemBuilder: (ctx, i) {
                    return food.buildCard(
                        weight.weight[i].image,
                        weight.weight[i].title,
                        weight.weight[i].description,
                        weight.weight[i].suite);
                  }),
            ),
          )),
    );
  }
}
