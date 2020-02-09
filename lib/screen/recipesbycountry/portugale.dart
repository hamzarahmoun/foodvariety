import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/widgetscreen/recipesbycountry/portugalfood.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PortugalCountry extends StatefulWidget {
  static const routeName = 'PR';

  @override
  _PortugalCountryState createState() => _PortugalCountryState();
}

class _PortugalCountryState extends State<PortugalCountry> {
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
    final thailand = Provider.of<Thailand>(context);
    final france = Provider.of<France>(context);
    final portugale = Provider.of<Portugal>(context);
    final sweden = Provider.of<Sweden>(context);
    final portugal = Provider.of<Portugal>(context);

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
                              thailand.thailandRecipes.sublist(3)[i].imageUrl,
                              thailand.thailandRecipes.sublist(3)[i].country),
                          _buildStory(
                              france.franceRecipes.sublist(3)[i].imageUrl,
                              france.franceRecipes.sublist(3)[i].country),
                          _buildStory(
                              sweden.swedenRecipes.sublist(3)[i].imageUrl,
                              sweden.swedenRecipes.sublist(3)[i].country),
                          _buildStory(
                              portugal.portugalRecipes.sublist(3)[i].imageUrl,
                              portugal.portugalRecipes.sublist(3)[i].country),
                        ],
                      )),
            ),
            _buildText('Best Dishes To Eat  ', 'in Portugal'),
            Container(
              height: height * 0.7,
              color: Colors.white,
              child: ListView.builder(
                itemCount: portugal.portugalRecipes.length,
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                    value: portugal.portugalRecipes[i],
                    child: ChangeNotifierProvider.value(
                        value: portugal.portugalRecipes[i],
                        child: PortugalWidget())),
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
