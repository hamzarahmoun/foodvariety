import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
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
                height: MediaQuery.of(context).size.height * 0.25,
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
                        ingredients:
                            italy.italyRecipes.sublist(3)[i].ingredients,
                        steps: italy.italyRecipes.sublist(3)[i].steps,
                        duration: italy.italyRecipes.sublist(3)[i].duration,
                        information:
                            italy.italyRecipes.sublist(3)[i].information,
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
                        ingredients:
                            india.indiaRecipes.sublist(5)[i].ingredients,
                        steps: india.indiaRecipes.sublist(5)[i].steps,
                        duration: india.indiaRecipes.sublist(5)[i].duration,
                        information:
                            india.indiaRecipes.sublist(5)[i].information,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: text.buildStoryViewAll(
                  bottomHeight: 0.24,
                  bottomWidth: 0.1,
                  title: sweden.swedenRecipes.sublist(1)[i].title,
                  image: sweden.swedenRecipes.sublist(1)[i].imageUrl,
                  country: sweden.swedenRecipes.sublist(1)[i].country,
                  rating: sweden.swedenRecipes.sublist(1)[i].codeFood,
                  ingredients: sweden.swedenRecipes.sublist(1)[i].ingredients,
                  steps: sweden.swedenRecipes.sublist(1)[i].steps,
                  duration: sweden.swedenRecipes.sublist(1)[i].duration,
                  information: sweden.swedenRecipes.sublist(1)[i].information,
                ),
              ),
            ],
          ),
          text.buildStoryMoreImage(
            thailand.thailandRecipes.sublist(4)[i].imageUrl,
            thailand.thailandRecipes.sublist(4)[i].title,
            thailand.thailandRecipes.sublist(4)[i].country,
            thailand.thailandRecipes.sublist(4)[i].codeFood,
            thailand.thailandRecipes.sublist(4)[i].ingredients,
            thailand.thailandRecipes.sublist(4)[i].steps,
            thailand.thailandRecipes.sublist(4)[i].duration,
            thailand.thailandRecipes.sublist(4)[i].information,
            thailand.thailandRecipes.sublist(5)[i].imageUrl,
            thailand.thailandRecipes.sublist(5)[i].title,
            thailand.thailandRecipes.sublist(5)[i].country,
            thailand.thailandRecipes.sublist(5)[i].codeFood,
            thailand.thailandRecipes.sublist(5)[i].ingredients,
            thailand.thailandRecipes.sublist(5)[i].steps,
            thailand.thailandRecipes.sublist(5)[i].duration,
            thailand.thailandRecipes.sublist(5)[i].title,
            italy.italyRecipes.sublist(5)[i].imageUrl,
            italy.italyRecipes.sublist(5)[i].title,
            italy.italyRecipes.sublist(5)[i].country,
            italy.italyRecipes.sublist(5)[i].codeFood,
            italy.italyRecipes.sublist(5)[i].ingredients,
            italy.italyRecipes.sublist(5)[i].steps,
            italy.italyRecipes.sublist(5)[i].duration,
            italy.italyRecipes.sublist(5)[i].information,
            italy.italyRecipes.sublist(6)[i].imageUrl,
            italy.italyRecipes.sublist(6)[i].title,
            italy.italyRecipes.sublist(6)[i].country,
            italy.italyRecipes.sublist(6)[i].codeFood,
            italy.italyRecipes.sublist(6)[i].ingredients,
            italy.italyRecipes.sublist(6)[i].steps,
            italy.italyRecipes.sublist(6)[i].duration,
            italy.italyRecipes.sublist(6)[i].information,
            india.indiaRecipes.sublist(7)[i].imageUrl,
            india.indiaRecipes.sublist(7)[i].title,
            india.indiaRecipes.sublist(7)[i].country,
            india.indiaRecipes.sublist(7)[i].codeFood,
            india.indiaRecipes.sublist(7)[i].ingredients,
            india.indiaRecipes.sublist(7)[i].steps,
            india.indiaRecipes.sublist(7)[i].duration,
            india.indiaRecipes.sublist(7)[i].information,
          ),
        ],
      ),
    );
  }
}
