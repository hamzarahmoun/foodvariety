import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:provider/provider.dart';

class PopularScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final morocco = Provider.of<Morocco>(context);
    final text = Provider.of<FoodProvider>(context);
    final italy = Provider.of<Italy>(context);
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (ctx, i) => Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: text.buildStoryViewAll(
                        bottomHeight: 0.2,
                        bottomWidth: 0.3,
                        title: australia.australiaRecipes[i].title,
                        image: australia.australiaRecipes[i].imageUrl,
                        country: australia.australiaRecipes[i].country,
                        rating: australia.australiaRecipes[i].rating,
                        ingredients: australia.australiaRecipes[i].ingredients,
                        steps: australia.australiaRecipes[i].steps,
                        duration: australia.australiaRecipes[i].duration,
                        information: australia.australiaRecipes[i].information,
                      ),
                    ),
                    Expanded(
                      child: text.buildStoryViewAll(
                        bottomHeight: 0.2,
                        bottomWidth: 0.3,
                        title: china.chinaRecipes[i].title,
                        image: china.chinaRecipes[i].imageUrl,
                        country: china.chinaRecipes[i].country,
                        rating: china.chinaRecipes[i].codeFood,
                        ingredients: china.chinaRecipes[i].ingredients,
                        steps: china.chinaRecipes[i].steps,
                        duration: china.chinaRecipes[i].duration,
                        information: china.chinaRecipes[i].information,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: text.buildStoryViewAll(
                  bottomHeight: 0.29,
                  bottomWidth: 0.1,
                  title: italy.italyRecipes[i].title,
                  image: italy.italyRecipes[i].imageUrl,
                  country: italy.italyRecipes[i].country,
                  rating: italy.italyRecipes[i].codeFood,
                  ingredients: italy.italyRecipes[i].ingredients,
                  steps: italy.italyRecipes[i].steps,
                  duration: italy.italyRecipes[i].duration,
                  information: italy.italyRecipes[i].information,
                ),
              ),
            ],
          ),
          text.buildStoryMoreImage(
            morocco.moroccoRecipes.sublist(3)[i].imageUrl,
            morocco.moroccoRecipes.sublist(3)[i].title,
            morocco.moroccoRecipes.sublist(3)[i].country,
            morocco.moroccoRecipes.sublist(3)[i].codeFood,
            morocco.moroccoRecipes.sublist(3)[i].ingredients,
            morocco.moroccoRecipes.sublist(3)[i].steps,
            morocco.moroccoRecipes.sublist(3)[i].duration,
            morocco.moroccoRecipes.sublist(3)[i].information,
            morocco.moroccoRecipes.sublist(4)[i].imageUrl,
            morocco.moroccoRecipes.sublist(4)[i].title,
            morocco.moroccoRecipes.sublist(4)[i].country,
            morocco.moroccoRecipes.sublist(4)[i].codeFood,
            morocco.moroccoRecipes.sublist(4)[i].ingredients,
            morocco.moroccoRecipes.sublist(4)[i].steps,
            morocco.moroccoRecipes.sublist(4)[i].duration,
            morocco.moroccoRecipes.sublist(4)[i].information,
            italy.italyRecipes.sublist(4)[i].imageUrl,
            italy.italyRecipes.sublist(4)[i].title,
            italy.italyRecipes.sublist(4)[i].country,
            italy.italyRecipes.sublist(4)[i].codeFood,
            italy.italyRecipes.sublist(4)[i].ingredients,
            italy.italyRecipes.sublist(4)[i].steps,
            italy.italyRecipes.sublist(4)[i].duration,
            italy.italyRecipes.sublist(4)[i].information,
            italy.italyRecipes.sublist(5)[i].imageUrl,
            italy.italyRecipes.sublist(5)[i].title,
            italy.italyRecipes.sublist(5)[i].country,
            italy.italyRecipes.sublist(5)[i].codeFood,
            italy.italyRecipes.sublist(5)[i].ingredients,
            italy.italyRecipes.sublist(5)[i].steps,
            italy.italyRecipes.sublist(5)[i].duration,
            italy.italyRecipes.sublist(5)[i].information,
            australia.australiaRecipes.sublist(4)[i].imageUrl,
            australia.australiaRecipes.sublist(4)[i].title,
            australia.australiaRecipes.sublist(4)[i].country,
            australia.australiaRecipes.sublist(4)[i].rating,
            australia.australiaRecipes.sublist(4)[i].ingredients,
            australia.australiaRecipes.sublist(4)[i].steps,
            australia.australiaRecipes.sublist(4)[i].duration,
            australia.australiaRecipes.sublist(4)[i].information,
          ),
        ],
      ),
    );
  }
}
