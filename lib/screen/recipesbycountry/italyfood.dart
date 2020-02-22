import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/italyfood.dart';
import 'package:provider/provider.dart';

class ItalyCountry extends StatelessWidget {
  static const routeName = 'IT';
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
                            australia.australiaRecipes.sublist(4)[i].imageUrl,
                            australia.australiaRecipes.sublist(4)[i].title,
                            australia.australiaRecipes.sublist(4)[i].country,
                            australia.australiaRecipes.sublist(4)[i].rating,
                            australia.australiaRecipes
                                .sublist(4)[i]
                                .ingredients,
                            australia.australiaRecipes.sublist(4)[i].steps,
                            australia.australiaRecipes.sublist(4)[i].duration,
                            australia.australiaRecipes
                                .sublist(4)[i]
                                .information,
                          ),
                          text.buildStory(
                            italy.italyRecipes.sublist(4)[i].imageUrl,
                            italy.italyRecipes.sublist(4)[i].title,
                            italy.italyRecipes.sublist(4)[i].country,
                            italy.italyRecipes.sublist(4)[i].codeFood,
                            italy.italyRecipes.sublist(4)[i].ingredients,
                            italy.italyRecipes.sublist(4)[i].steps,
                            italy.italyRecipes.sublist(4)[i].duration,
                            italy.italyRecipes.sublist(4)[i].information,
                          ),
                          text.buildStory(
                            china.chinaRecipes.sublist(4)[i].imageUrl,
                            china.chinaRecipes.sublist(4)[i].title,
                            china.chinaRecipes.sublist(4)[i].country,
                            china.chinaRecipes.sublist(4)[i].codeFood,
                            china.chinaRecipes.sublist(4)[i].ingredients,
                            china.chinaRecipes.sublist(4)[i].steps,
                            china.chinaRecipes.sublist(4)[i].duration,
                            china.chinaRecipes.sublist(4)[i].information,
                          ),
                          text.buildStory(
                            morocco.moroccoRecipes.sublist(4)[i].imageUrl,
                            morocco.moroccoRecipes.sublist(4)[i].title,
                            morocco.moroccoRecipes.sublist(4)[i].country,
                            morocco.moroccoRecipes.sublist(4)[i].codeFood,
                            morocco.moroccoRecipes.sublist(4)[i].ingredients,
                            morocco.moroccoRecipes.sublist(4)[i].steps,
                            morocco.moroccoRecipes.sublist(4)[i].duration,
                            morocco.moroccoRecipes.sublist(4)[i].information,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in Italy'),
            text.animationListView(
              widget: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ListView.builder(
                  itemCount: italy.italyRecipes.length,
                  itemBuilder: (ctx, i) {
                    return ChangeNotifierProvider.value(
                      value: italy.italyRecipes[i],
                      child: ItalyWidget(),
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
