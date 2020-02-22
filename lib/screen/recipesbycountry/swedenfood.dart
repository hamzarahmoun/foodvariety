import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/sweden.dart';
import 'package:provider/provider.dart';

class SwedenCountry extends StatelessWidget {
  static const routeName = 'SW';
  @override
  Widget build(BuildContext context) {
    final thailand = Provider.of<Thailand>(context);
    final france = Provider.of<France>(context);
    final portugal = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
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
                            thailand.thailandRecipes.sublist(4)[i].imageUrl,
                            thailand.thailandRecipes.sublist(4)[i].title,
                            thailand.thailandRecipes.sublist(4)[i].country,
                            thailand.thailandRecipes.sublist(4)[i].codeFood,
                            thailand.thailandRecipes.sublist(4)[i].ingredients,
                            thailand.thailandRecipes.sublist(4)[i].steps,
                            thailand.thailandRecipes.sublist(4)[i].duration,
                            thailand.thailandRecipes.sublist(4)[i].information,
                          ),
                          text.buildStory(
                            france.franceRecipes.sublist(4)[i].imageUrl,
                            france.franceRecipes.sublist(4)[i].title,
                            france.franceRecipes.sublist(4)[i].country,
                            france.franceRecipes.sublist(4)[i].codeFood,
                            france.franceRecipes.sublist(4)[i].ingredients,
                            france.franceRecipes.sublist(4)[i].steps,
                            france.franceRecipes.sublist(4)[i].duration,
                            france.franceRecipes.sublist(4)[i].information,
                          ),
                          text.buildStory(
                            sweden.swedenRecipes.sublist(4)[i].imageUrl,
                            sweden.swedenRecipes.sublist(4)[i].title,
                            sweden.swedenRecipes.sublist(4)[i].country,
                            sweden.swedenRecipes.sublist(4)[i].codeFood,
                            sweden.swedenRecipes.sublist(4)[i].ingredients,
                            sweden.swedenRecipes.sublist(4)[i].steps,
                            sweden.swedenRecipes.sublist(4)[i].duration,
                            sweden.swedenRecipes.sublist(4)[i].information,
                          ),
                          text.buildStory(
                            portugal.portugalRecipes.sublist(4)[i].imageUrl,
                            portugal.portugalRecipes.sublist(4)[i].title,
                            portugal.portugalRecipes.sublist(4)[i].country,
                            portugal.portugalRecipes.sublist(4)[i].codeFood,
                            portugal.portugalRecipes.sublist(4)[i].ingredients,
                            portugal.portugalRecipes.sublist(4)[i].steps,
                            portugal.portugalRecipes.sublist(4)[i].duration,
                            portugal.portugalRecipes.sublist(4)[i].information,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Sweden'),
            text.animationListView(
              widget: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                  itemCount: sweden.swedenRecipes.length,
                  itemBuilder: (ctx, i) {
                    return ChangeNotifierProvider.value(
                      value: sweden.swedenRecipes[i],
                      child: SwedenWidget(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
