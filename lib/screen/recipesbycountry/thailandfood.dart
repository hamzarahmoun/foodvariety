import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/thailandfood.dart';
import 'package:provider/provider.dart';

class ThailandCountry extends StatelessWidget {
  static const routeName = 'Th';
  @override
  Widget build(BuildContext context) {
    final france = Provider.of<France>(context);
    final portugal = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
    final thailand = Provider.of<Thailand>(context);
    final height = MediaQuery.of(context).size.height;
    final text = Provider.of<FoodProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            text.buildText('You May ', ' Also Like'),
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
                            thailand.thailandRecipes.sublist(2)[i].imageUrl,
                            thailand.thailandRecipes.sublist(2)[i].country,
                          ),
                          text.buildStory(
                            france.franceRecipes.sublist(2)[i].imageUrl,
                            france.franceRecipes.sublist(2)[i].country,
                          ),
                          text.buildStory(
                            sweden.swedenRecipes.sublist(2)[i].imageUrl,
                            sweden.swedenRecipes.sublist(2)[i].country,
                          ),
                          text.buildStory(
                            portugal.portugalRecipes.sublist(2)[i].imageUrl,
                            portugal.portugalRecipes.sublist(2)[i].country,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Thailand'),
            text.animationListView(
              widget: ListView.builder(
                itemCount: thailand.thailandRecipes.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: thailand.thailandRecipes[i],
                    child: ThailandWidget(),
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
