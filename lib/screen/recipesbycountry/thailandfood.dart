import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/thailandfood.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThailandCountry extends StatefulWidget {
  static const routeName = 'Th';
  @override
  _ThailandCountryState createState() => _ThailandCountryState();
}

class _ThailandCountryState extends State<ThailandCountry> {
  @override
  Widget build(BuildContext context) {
    final france = Provider.of<France>(context);
    final portugal = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
    final thailand = Provider.of<Thailand>(context);
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            _buildText('You May ', ' Also Like'),
            Container(
              height: height * 0.2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.white,
                    Colors.black54,
                  ])),
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
            _buildText('Best Dishes To Eat  ', 'in Thailand'),
            Container(
              height: height * 0.7,
              color: Colors.white,
              child: ListView.builder(
                itemCount: thailand.thailandRecipes.length,
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                    value: thailand.thailandRecipes[i],
                    child: ChangeNotifierProvider.value(
                        value: thailand.thailandRecipes[i],
                        child: ThailandWidget())),
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
      height: MediaQuery.of(context).size.height * 0.04,
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
              text: text,
              style: GoogleFonts.abrilFatface(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStory(
    String image,
    String title,
  ) {
    return Padding(
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
    );
  }
}
