import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foodvariety/provider/drawerprovide/festivale.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/foodprovider/foodprovidr1.dart';
import 'package:provider/provider.dart';

class FestivalScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final festival = Provider.of<FestivalFuture>(context);
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
                  itemCount: festival.festival.length,
                  itemBuilder: (ctx, i) {
                    return food.buildCard(
                      festival.festival[i].image,
                      festival.festival[i].title,
                      festival.festival[i].description,
                      festival.festival[i].suite,
                    );
                  }),
            ),
          )),
    );
  }
}
