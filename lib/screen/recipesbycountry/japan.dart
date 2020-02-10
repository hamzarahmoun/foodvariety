import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/japanfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/japanfood.dart';
import 'package:provider/provider.dart';

class JapanCountry extends StatelessWidget {
  static const routeName = 'JP';
  @override
  Widget build(BuildContext context) {
    final morocco = Provider.of<Morocco>(context);
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final italy = Provider.of<Italy>(context);
    final japan = Provider.of<Japan>(context);
    final text = Provider.of<FoodProvider>(context);
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            text.buildText('You May', ' Also Like'),
            Container(
              height: height * 0.2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.white,
                    Colors.black54,
                  ])),
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Row(
                        children: <Widget>[
                          text.buildStory(
                            australia.australiaRecipes.sublist(5)[i].imageUrl,
                            australia.australiaRecipes.sublist(5)[i].country,
                          ),
                          text.buildStory(
                            italy.italyRecipes.sublist(5)[i].imageUrl,
                            italy.italyRecipes.sublist(5)[i].country,
                          ),
                          text.buildStory(
                            china.chinaRecipes.sublist(5)[i].imageUrl,
                            china.chinaRecipes.sublist(5)[i].country,
                          ),
                          text.buildStory(
                            morocco.moroccoRecipes.sublist(5)[i].imageUrl,
                            morocco.moroccoRecipes.sublist(5)[i].country,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Japan'),
            text.animationListView(
              widget: ListView.builder(
                itemCount: japan.japanRecipes.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: japan.japanRecipes[i],
                    child: JapanWidget(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
