import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/japanfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:provider/provider.dart';

class PopularScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final morocco = Provider.of<Morocco>(context);
    final japan = Provider.of<Japan>(context);
    final text = Provider.of<FoodProvider>(context);
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
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: text.buildStoryViewAll(
                  bottomHeight: 0.29,
                  bottomWidth: 0.1,
                  title: japan.japanRecipes[i].title,
                  image: japan.japanRecipes[i].imageUrl,
                  country: japan.japanRecipes[i].country,
                  rating: japan.japanRecipes[i].codeFood,
                ),
              ),
            ],
          ),
          text.buildStoryMoreImage(
              morocco.moroccoRecipes.sublist(3)[i].imageUrl),
        ],
      ),
    );
  }
}
