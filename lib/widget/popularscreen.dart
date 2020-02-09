import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/japanfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:provider/provider.dart';

class PopularScreen extends StatefulWidget {
  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
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
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final morocco = Provider.of<Morocco>(context);
    final japan = Provider.of<Japan>(context);
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
                        title: australia.australiaRecipes[i].title,
                        image: australia.australiaRecipes[i].imageUrl,
                        country: australia.australiaRecipes[i].country,
                        rating: australia.australiaRecipes[i].rating,
                      ),
                    ),
                    Expanded(
                      child: _buildStory(
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
                child: _buildStory(
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
                  morocco.moroccoRecipes.sublist(3)[i].imageUrl,
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
