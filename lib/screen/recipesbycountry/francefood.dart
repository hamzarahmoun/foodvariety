import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/france.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FranceCountry extends StatefulWidget {
  static const routeName = 'FR';

  @override
  _FranceCountryState createState() => _FranceCountryState();
}

class _FranceCountryState extends State<FranceCountry> {
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

  @override
  Widget build(BuildContext context) {
    final morocco = Provider.of<Morocco>(context);
    final australia = Provider.of<Australia>(context);
    final china = Provider.of<China>(context);
    final italy = Provider.of<Italy>(context);
    final france = Provider.of<France>(context);

    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            _buildText('You May', ' Also Like'),
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
                              australia.australiaRecipes.sublist(2)[i].imageUrl,
                              australia.australiaRecipes.sublist(2)[i].country),
                          _buildStory(italy.italyRecipes.sublist(2)[i].imageUrl,
                              italy.italyRecipes.sublist(2)[i].country),
                          _buildStory(china.chinaRecipes.sublist(2)[i].imageUrl,
                              china.chinaRecipes.sublist(2)[i].country),
                          _buildStory(
                              morocco.moroccoRecipes.sublist(2)[i].imageUrl,
                              morocco.moroccoRecipes.sublist(2)[i].country),
                        ],
                      )),
            ),
            _buildText('Best Dishes To Eat  ', 'in France'),
            Container(
              height: height * 0.7,
              color: Colors.white,
              child: ListView.builder(
                itemCount: france.franceRecipes.length,
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                    value: france.franceRecipes[i],
                    child: ChangeNotifierProvider.value(
                        value: france.franceRecipes[i], child: FranceWidget())),
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
              text: text,
              style: GoogleFonts.abrilFatface(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
