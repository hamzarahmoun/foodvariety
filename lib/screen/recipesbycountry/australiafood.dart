import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/australiafood.dart';
import 'package:provider/provider.dart';

class AustraliaCountry extends StatelessWidget {
  static const routeName = 'Au';
  @override
  Widget build(BuildContext context) {
    final morocco = Provider.of<Morocco>(context);
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final italy = Provider.of<Italy>(context);
    final height = MediaQuery.of(context).size.height;
    final text = Provider.of<FoodProvider>(context);
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
                            australia.australiaRecipes[i].imageUrl,
                            australia.australiaRecipes[i].country,
                          ),
                          text.buildStory(
                            italy.italyRecipes[i].imageUrl,
                            italy.italyRecipes[i].country,
                          ),
                          text.buildStory(
                            china.chinaRecipes[i].imageUrl,
                            china.chinaRecipes[i].country,
                          ),
                          text.buildStory(
                            morocco.moroccoRecipes[i].imageUrl,
                            morocco.moroccoRecipes[i].country,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Australia'),
            text.animationListView(
              widget: ListView.builder(
                itemCount: australia.australiaRecipes.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: australia.australiaRecipes[i],
                    child: AustraliaWidget(),
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
