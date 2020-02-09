import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:provider/provider.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Widget _buildStory(
      {double bottomHeight,
      double bottomWidth,
      String title,
      String image,
      String country,
      double rating}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (ctx) =>
                      PopularFoodView(title, image, country, rating)));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * bottomHeight,
          width: MediaQuery.of(context).size.height * bottomWidth,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          child: Stack(
            children: <Widget>[
              ExtendedImage.network(
                image,
                width: double.infinity,
                fit: BoxFit.fill,
                height: double.infinity,
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
                colorBlendMode: BlendMode.darken,
                loadStateChanged: (ExtendedImageState state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                      return Image.asset(
                        'assets/azucar.gif',
                        fit: BoxFit.fill,
                      );
                      break;
                    case LoadState.completed:
                      break;
                    case LoadState.failed:
                      break;
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final france = Provider.of<France>(context);
    final portugale = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
    final thailand = Provider.of<Thailand>(context);
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
                      child: _buildStory(
                        bottomHeight: 0.2,
                        bottomWidth: 0.3,
                        title: france.franceRecipes.sublist(1)[i].title,
                        image: france.franceRecipes.sublist(1)[i].imageUrl,
                        country: france.franceRecipes.sublist(1)[i].country,
                        rating: france.franceRecipes.sublist(1)[i].codeFood,
                      ),
                    ),
                    Expanded(
                      child: _buildStory(
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
                child: _buildStory(
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
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            child: Stack(
              children: <Widget>[
                ExtendedImage.network(
                  thailand.thailandRecipes.sublist(2)[i].imageUrl,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  height: double.infinity,
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.black54,
                  loadStateChanged: (ExtendedImageState state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.loading:
                        return Image.asset(
                          'assets/azucar.gif',
                          fit: BoxFit.fill,
                        );
                        break;
                      case LoadState.completed:
                        break;
                      case LoadState.failed:
                        break;
                    }
                    return null;
                  },
                ),
                Center(
                  child: Text(
                    '+ 5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
