import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/indiafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:provider/provider.dart';

class RecommendedScreen extends StatefulWidget {
  @override
  _RecommendedScreenState createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final italy = Provider.of<Italy>(context);
    final india = Provider.of<India>(context);
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
                        title: italy.italyRecipes.sublist(3)[i].title,
                        image: italy.italyRecipes.sublist(3)[i].imageUrl,
                        country: italy.italyRecipes.sublist(3)[i].country,
                        rating: italy.italyRecipes.sublist(3)[i].codeFood,
                      ),
                    ),
                    Expanded(
                      child: _buildStory(
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
                child: _buildStory(
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
                  thailand.thailandRecipes.sublist(4)[i].imageUrl,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  height: double.infinity,
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.black54,
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
