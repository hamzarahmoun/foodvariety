import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/moroccofood.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoroccoCountry extends StatefulWidget {
  static const routeName = 'recipescountry';

  @override
  _MoroccoCountryState createState() => _MoroccoCountryState();
}

class _MoroccoCountryState extends State<MoroccoCountry> {
  Widget _buildStory(
    String image,
    String title,
  ) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ExtendedImage.network(
                    image,
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              FittedBox(
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aclonica(
                      fontSize: 15,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final thailand = Provider.of<Thailand>(context);
    final france = Provider.of<France>(context);
    final portugal = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
    final morocco = Provider.of<Morocco>(context);
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            _buildText('You May', ' Also Like'),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.white,
                    Colors.black54,
                  ])),
              height: height * 0.2,
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Row(
                        children: <Widget>[
                          _buildStory(
                              thailand.thailandRecipes.sublist(2)[i].imageUrl,
                              thailand.thailandRecipes.sublist(2)[i].country),
                          _buildStory(
                              france.franceRecipes.sublist(2)[i].imageUrl,
                              france.franceRecipes.sublist(2)[i].country),
                          _buildStory(
                              sweden.swedenRecipes.sublist(2)[i].imageUrl,
                              sweden.swedenRecipes.sublist(2)[i].country),
                          _buildStory(
                              portugal.portugalRecipes.sublist(2)[i].imageUrl,
                              portugal.portugalRecipes.sublist(2)[i].country),
                        ],
                      )),
            ),
            _buildText('Best Dishes To Eat  ', 'in Morocco'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: height * 0.7,
                child: ListView.builder(
                  itemCount: morocco.moroccoRecipes.length,
                  itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: morocco.moroccoRecipes[i], child: MoroccoWidget()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildText(String title, String text) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.05,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: title,
              style: GoogleFonts.abrilFatface(color: Colors.green),
            ),
            TextSpan(
                text: text, style: GoogleFonts.abrilFatface(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
