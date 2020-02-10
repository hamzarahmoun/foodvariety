import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/indiafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:provider/provider.dart';

class RecommendedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final italy = Provider.of<Italy>(context);
    final india = Provider.of<India>(context);
    final sweden = Provider.of<Sweden>(context);
    final thailand = Provider.of<Thailand>(context);
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
                        title: italy.italyRecipes.sublist(3)[i].title,
                        image: italy.italyRecipes.sublist(3)[i].imageUrl,
                        country: italy.italyRecipes.sublist(3)[i].country,
                        rating: italy.italyRecipes.sublist(3)[i].codeFood,
                      ),
                    ),
                    Expanded(
                      child: text.buildStoryViewAll(
                        bottomHeight: 0.2,
                        bottomWidth: 0.3,
                        title: india.indiaRecipes.sublist(5)[i].title,
                        image: india.indiaRecipes.sublist(5)[i].imageUrl,
                        country: india.indiaRecipes.sublist(5)[i].country,
                        rating: india.indiaRecipes.sublist(5)[i].codeFood,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: text.buildStoryViewAll(
                  bottomHeight: 0.29,
                  bottomWidth: 0.1,
                  title: sweden.swedenRecipes.sublist(1)[i].title,
                  image: sweden.swedenRecipes.sublist(1)[i].imageUrl,
                  country: sweden.swedenRecipes.sublist(1)[i].country,
                  rating: sweden.swedenRecipes.sublist(1)[i].codeFood,
                ),
              ),
            ],
          ),
          text.buildStoryMoreImage(
            thailand.thailandRecipes.sublist(4)[i].imageUrl,
            thailand.thailandRecipes.sublist(4)[i].title,
          ),
        ],
      ),
    );
  }
}
