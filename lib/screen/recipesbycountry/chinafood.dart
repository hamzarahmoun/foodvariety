import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/chinafood.dart';
import 'package:provider/provider.dart';

class ChinaCountry extends StatefulWidget {
  static const routeName = 'Ch';

  @override
  _ChinaCountryState createState() => _ChinaCountryState();
}

class _ChinaCountryState extends State<ChinaCountry> {
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
            text.buildText(
              'You May',
              ' Also Like',
            ),
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
                            australia.australiaRecipes.sublist(1)[i].imageUrl,
                            australia.australiaRecipes.sublist(1)[i].title,
                            australia.australiaRecipes.sublist(1)[i].country,
                            australia.australiaRecipes.sublist(1)[i].rating,
                            australia.australiaRecipes
                                .sublist(1)[i]
                                .ingredients,
                            australia.australiaRecipes.sublist(1)[i].steps,
                            australia.australiaRecipes.sublist(1)[i].duration,
                            australia.australiaRecipes
                                .sublist(1)[i]
                                .information,
                          ),
                          text.buildStory(
                            italy.italyRecipes.sublist(1)[i].imageUrl,
                            italy.italyRecipes.sublist(1)[i].title,
                            italy.italyRecipes.sublist(1)[i].country,
                            italy.italyRecipes.sublist(1)[i].codeFood,
                            italy.italyRecipes.sublist(1)[i].ingredients,
                            italy.italyRecipes.sublist(1)[i].steps,
                            italy.italyRecipes.sublist(1)[i].duration,
                            italy.italyRecipes.sublist(1)[i].information,
                          ),
                          text.buildStory(
                            china.chinaRecipes.sublist(1)[i].imageUrl,
                            china.chinaRecipes.sublist(1)[i].title,
                            china.chinaRecipes.sublist(1)[i].country,
                            china.chinaRecipes.sublist(1)[i].codeFood,
                            china.chinaRecipes.sublist(1)[i].ingredients,
                            china.chinaRecipes.sublist(1)[i].steps,
                            china.chinaRecipes.sublist(1)[i].duration,
                            china.chinaRecipes.sublist(1)[i].information,
                          ),
                          text.buildStory(
                            morocco.moroccoRecipes.sublist(1)[i].imageUrl,
                            morocco.moroccoRecipes.sublist(1)[i].title,
                            morocco.moroccoRecipes.sublist(1)[i].country,
                            morocco.moroccoRecipes.sublist(1)[i].codeFood,
                            morocco.moroccoRecipes.sublist(1)[i].ingredients,
                            morocco.moroccoRecipes.sublist(1)[i].steps,
                            morocco.moroccoRecipes.sublist(1)[i].duration,
                            morocco.moroccoRecipes.sublist(1)[i].information,
                          ),
                        ],
                      )),
            ),
            text.buildText('Best Dishes To Eat  ', 'in China'),
            text.animationListView(
              widget: ListView.builder(
                itemCount: china.chinaRecipes.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(
                    value: china.chinaRecipes[i],
                    child: ChinaWidget(),
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
