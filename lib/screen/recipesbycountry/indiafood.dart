import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/indiafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/india.dart';
import 'package:provider/provider.dart';

class IndiaCountry extends StatelessWidget {
  static const routeName = 'In';
  @override
  Widget build(BuildContext context) {
    final morocco = Provider.of<Morocco>(context);
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final italy = Provider.of<Italy>(context);
    final india = Provider.of<India>(context);
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
                            australia.australiaRecipes.sublist(3)[i].imageUrl,
                            australia.australiaRecipes.sublist(3)[i].title,
                            australia.australiaRecipes.sublist(3)[i].country,
                            australia.australiaRecipes.sublist(3)[i].rating,
                            australia.australiaRecipes
                                .sublist(3)[i]
                                .ingredients,
                            australia.australiaRecipes.sublist(3)[i].steps,
                            australia.australiaRecipes.sublist(3)[i].duration,
                            australia.australiaRecipes
                                .sublist(3)[i]
                                .information,
                          ),
                          text.buildStory(
                            italy.italyRecipes.sublist(3)[i].imageUrl,
                            italy.italyRecipes.sublist(3)[i].title,
                            italy.italyRecipes.sublist(3)[i].country,
                            italy.italyRecipes.sublist(3)[i].codeFood,
                            italy.italyRecipes.sublist(3)[i].ingredients,
                            italy.italyRecipes.sublist(3)[i].steps,
                            italy.italyRecipes.sublist(3)[i].duration,
                            italy.italyRecipes.sublist(3)[i].information,
                          ),
                          text.buildStory(
                            china.chinaRecipes.sublist(3)[i].imageUrl,
                            china.chinaRecipes.sublist(3)[i].title,
                            china.chinaRecipes.sublist(3)[i].country,
                            china.chinaRecipes.sublist(3)[i].codeFood,
                            china.chinaRecipes.sublist(3)[i].ingredients,
                            china.chinaRecipes.sublist(3)[i].steps,
                            china.chinaRecipes.sublist(3)[i].duration,
                            china.chinaRecipes.sublist(3)[i].information,
                          ),
                          text.buildStory(
                            morocco.moroccoRecipes.sublist(3)[i].imageUrl,
                            morocco.moroccoRecipes.sublist(3)[i].title,
                            morocco.moroccoRecipes.sublist(3)[i].country,
                            morocco.moroccoRecipes.sublist(3)[i].codeFood,
                            morocco.moroccoRecipes.sublist(3)[i].ingredients,
                            morocco.moroccoRecipes.sublist(3)[i].steps,
                            morocco.moroccoRecipes.sublist(3)[i].duration,
                            morocco.moroccoRecipes.sublist(3)[i].information,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in India'),
            text.animationListView(
              widget: ListView.builder(
                itemCount: india.indiaRecipes.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: india.indiaRecipes[i],
                    child: IndiaWidget(),
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
