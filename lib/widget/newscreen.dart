import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:provider/provider.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final france = Provider.of<France>(context);
    final portugale = Provider.of<Portugal>(context);
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
                        title: france.franceRecipes.sublist(1)[i].title,
                        image: france.franceRecipes.sublist(1)[i].imageUrl,
                        country: france.franceRecipes.sublist(1)[i].country,
                        rating: france.franceRecipes.sublist(1)[i].codeFood,
                      ),
                    ),
                    Expanded(
                      child: text.buildStoryViewAll(
                        bottomHeight: 0.2,
                        bottomWidth: 0.3,
                        title: portugale.portugalRecipes.sublist(5)[i].title,
                        image: portugale.portugalRecipes.sublist(5)[i].imageUrl,
                        country:
                            portugale.portugalRecipes.sublist(5)[i].country,
                        rating: france.franceRecipes.sublist(5)[i].codeFood,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: text.buildStoryViewAll(
                  bottomHeight: 0.29,
                  bottomWidth: 0.1,
                  title: sweden.swedenRecipes.sublist(7)[i].title,
                  image: sweden.swedenRecipes.sublist(7)[i].imageUrl,
                  country: sweden.swedenRecipes.sublist(7)[i].country,
                  rating: france.franceRecipes.sublist(7)[i].codeFood,
                ),
              ),
            ],
          ),
          text.buildStoryMoreImage(
            thailand.thailandRecipes.sublist(3)[i].imageUrl,
            thailand.thailandRecipes.sublist(3)[i].title,
            thailand.thailandRecipes.sublist(8)[i].imageUrl,
            thailand.thailandRecipes.sublist(8)[i].title,
            sweden.swedenRecipes.sublist(3)[i].imageUrl,
            sweden.swedenRecipes.sublist(3)[i].title,
            sweden.swedenRecipes.sublist(4)[i].imageUrl,
            sweden.swedenRecipes.sublist(4)[i].title,
            portugale.portugalRecipes.sublist(3)[i].imageUrl,
            portugale.portugalRecipes.sublist(3)[i].title,
          ),
        ],
      ),
    );
  }
}
