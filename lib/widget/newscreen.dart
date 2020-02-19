import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
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
                        ingredients:
                            france.franceRecipes.sublist(1)[i].ingredients,
                        steps: france.franceRecipes.sublist(1)[i].steps,
                        duration: france.franceRecipes.sublist(1)[i].duration,
                        information:
                            france.franceRecipes.sublist(1)[i].information,
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
                        rating:
                            portugale.portugalRecipes.sublist(5)[i].codeFood,
                        ingredients:
                            portugale.portugalRecipes.sublist(5)[i].ingredients,
                        steps: portugale.portugalRecipes.sublist(5)[i].steps,
                        duration:
                            portugale.portugalRecipes.sublist(5)[i].duration,
                        information:
                            portugale.portugalRecipes.sublist(5)[i].information,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: text.buildStoryViewAll(
                  bottomHeight: 0.29,
                  bottomWidth: 0.1,
                  title: sweden.swedenRecipes.sublist(4)[i].title,
                  image: sweden.swedenRecipes.sublist(4)[i].imageUrl,
                  country: sweden.swedenRecipes.sublist(4)[i].country,
                  rating: sweden.swedenRecipes.sublist(4)[i].codeFood,
                  ingredients: sweden.swedenRecipes.sublist(4)[i].ingredients,
                  steps: sweden.swedenRecipes.sublist(4)[i].steps,
                  duration: sweden.swedenRecipes.sublist(4)[i].duration,
                  information: sweden.swedenRecipes.sublist(4)[i].information,
                ),
              ),
            ],
          ),
          text.buildStoryMoreImage(
            thailand.thailandRecipes.sublist(3)[i].imageUrl,
            thailand.thailandRecipes.sublist(3)[i].title,
            thailand.thailandRecipes.sublist(3)[i].country,
            thailand.thailandRecipes.sublist(3)[i].codeFood,
            thailand.thailandRecipes.sublist(3)[i].ingredients,
            thailand.thailandRecipes.sublist(3)[i].steps,
            thailand.thailandRecipes.sublist(3)[i].duration,
            thailand.thailandRecipes.sublist(3)[i].information,
            thailand.thailandRecipes.sublist(6)[i].imageUrl,
            thailand.thailandRecipes.sublist(6)[i].title,
            thailand.thailandRecipes.sublist(6)[i].country,
            thailand.thailandRecipes.sublist(6)[i].codeFood,
            thailand.thailandRecipes.sublist(6)[i].ingredients,
            thailand.thailandRecipes.sublist(6)[i].steps,
            thailand.thailandRecipes.sublist(6)[i].duration,
            thailand.thailandRecipes.sublist(6)[i].information,
            sweden.swedenRecipes.sublist(3)[i].imageUrl,
            sweden.swedenRecipes.sublist(3)[i].title,
            sweden.swedenRecipes.sublist(3)[i].country,
            sweden.swedenRecipes.sublist(3)[i].codeFood,
            sweden.swedenRecipes.sublist(3)[i].ingredients,
            sweden.swedenRecipes.sublist(3)[i].steps,
            sweden.swedenRecipes.sublist(3)[i].duration,
            sweden.swedenRecipes.sublist(3)[i].information,
            sweden.swedenRecipes.sublist(4)[i].imageUrl,
            sweden.swedenRecipes.sublist(4)[i].title,
            sweden.swedenRecipes.sublist(4)[i].country,
            sweden.swedenRecipes.sublist(4)[i].codeFood,
            sweden.swedenRecipes.sublist(4)[i].ingredients,
            sweden.swedenRecipes.sublist(4)[i].steps,
            sweden.swedenRecipes.sublist(4)[i].duration,
            sweden.swedenRecipes.sublist(4)[i].information,
            portugale.portugalRecipes.sublist(3)[i].imageUrl,
            portugale.portugalRecipes.sublist(3)[i].title,
            portugale.portugalRecipes.sublist(3)[i].country,
            portugale.portugalRecipes.sublist(3)[i].codeFood,
            portugale.portugalRecipes.sublist(3)[i].ingredients,
            portugale.portugalRecipes.sublist(3)[i].steps,
            portugale.portugalRecipes.sublist(3)[i].duration,
            portugale.portugalRecipes.sublist(3)[i].information,
          ),
        ],
      ),
    );
  }
}
