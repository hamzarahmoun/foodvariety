import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/moroccofood.dart';
import 'package:provider/provider.dart';

class MoroccoCountry extends StatelessWidget {
  static const routeName = 'recipescountry';

  @override
  Widget build(BuildContext context) {
    final thailand = Provider.of<Thailand>(context);
    final france = Provider.of<France>(context);
    final portugal = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
    final morocco = Provider.of<Morocco>(context);
    final height = MediaQuery.of(context).size.height;
    final text = Provider.of<FoodProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            text.buildText('You May', ' Also Like'),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.white,
                    Colors.black54,
                  ])),
              height: height * 0.2,
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Row(
                        children: <Widget>[
                          text.buildStory(
                            thailand.thailandRecipes.sublist(2)[i].imageUrl,
                            thailand.thailandRecipes.sublist(2)[i].title,
                            thailand.thailandRecipes.sublist(2)[i].country,
                            thailand.thailandRecipes.sublist(2)[i].codeFood,
                            thailand.thailandRecipes.sublist(2)[i].ingredients,
                            thailand.thailandRecipes.sublist(2)[i].steps,
                            thailand.thailandRecipes.sublist(2)[i].duration,
                            thailand.thailandRecipes.sublist(2)[i].information,
                          ),
                          text.buildStory(
                            france.franceRecipes.sublist(2)[i].imageUrl,
                            france.franceRecipes.sublist(2)[i].title,
                            france.franceRecipes.sublist(2)[i].country,
                            france.franceRecipes.sublist(2)[i].codeFood,
                            france.franceRecipes.sublist(2)[i].ingredients,
                            france.franceRecipes.sublist(2)[i].steps,
                            france.franceRecipes.sublist(2)[i].duration,
                            france.franceRecipes.sublist(2)[i].information,
                          ),
                          text.buildStory(
                            sweden.swedenRecipes.sublist(2)[i].imageUrl,
                            sweden.swedenRecipes.sublist(2)[i].title,
                            sweden.swedenRecipes.sublist(2)[i].country,
                            sweden.swedenRecipes.sublist(2)[i].codeFood,
                            sweden.swedenRecipes.sublist(2)[i].ingredients,
                            sweden.swedenRecipes.sublist(2)[i].steps,
                            sweden.swedenRecipes.sublist(2)[i].duration,
                            sweden.swedenRecipes.sublist(2)[i].information,
                          ),
                          text.buildStory(
                            portugal.portugalRecipes.sublist(2)[i].imageUrl,
                            portugal.portugalRecipes.sublist(2)[i].title,
                            portugal.portugalRecipes.sublist(2)[i].country,
                            portugal.portugalRecipes.sublist(2)[i].codeFood,
                            portugal.portugalRecipes.sublist(2)[i].ingredients,
                            portugal.portugalRecipes.sublist(2)[i].steps,
                            portugal.portugalRecipes.sublist(2)[i].duration,
                            portugal.portugalRecipes.sublist(2)[i].information,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Morocco'),
            text.animationListView(
              widget: ListView.builder(
                itemCount: morocco.moroccoRecipes.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: morocco.moroccoRecipes[i],
                    child: MoroccoWidget(),
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
