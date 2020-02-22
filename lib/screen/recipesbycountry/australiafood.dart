import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
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
                            australia.australiaRecipes[i].title,
                            australia.australiaRecipes[i].country,
                            australia.australiaRecipes[i].rating,
                            australia.australiaRecipes[i].ingredients,
                            australia.australiaRecipes[i].steps,
                            australia.australiaRecipes[i].duration,
                            australia.australiaRecipes[i].information,
                          ),
                          text.buildStory(
                            italy.italyRecipes[i].imageUrl,
                            italy.italyRecipes[i].title,
                            italy.italyRecipes[i].country,
                            italy.italyRecipes[i].codeFood,
                            italy.italyRecipes[i].ingredients,
                            italy.italyRecipes[i].steps,
                            italy.italyRecipes[i].duration,
                            italy.italyRecipes[i].information,
                          ),
                          text.buildStory(
                            china.chinaRecipes[i].imageUrl,
                            china.chinaRecipes[i].title,
                            china.chinaRecipes[i].country,
                            china.chinaRecipes[i].codeFood,
                            china.chinaRecipes[i].ingredients,
                            china.chinaRecipes[i].steps,
                            china.chinaRecipes[i].duration,
                            china.chinaRecipes[i].information,
                          ),
                          text.buildStory(
                            morocco.moroccoRecipes[i].imageUrl,
                            morocco.moroccoRecipes[i].title,
                            morocco.moroccoRecipes[i].country,
                            morocco.moroccoRecipes[i].codeFood,
                            morocco.moroccoRecipes[i].ingredients,
                            morocco.moroccoRecipes[i].steps,
                            morocco.moroccoRecipes[i].duration,
                            morocco.moroccoRecipes[i].information,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Australia'),
            text.animationListView(
              widget: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                  itemCount: australia.australiaRecipes.length,
                  itemBuilder: (ctx, i) {
                    return ChangeNotifierProvider.value(
                      value: australia.australiaRecipes[i],
                      child: AustraliaWidget(),
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
