import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/morefoodscreen.dart';
import 'package:foodvariety/screen/detail/detailforthemoreimage.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:foodvariety/screen/homepage.dart';
import 'package:foodvariety/screen/lineardrawer/festival.dart';
import 'package:foodvariety/screen/lineardrawer/foodnew.dart';
import 'package:foodvariety/screen/lineardrawer/halthtips.dart';
import 'package:foodvariety/screen/lineardrawer/weightloss.dart';
import 'package:foodvariety/screen/lineardrawer/worldcuisin.dart';
import 'package:foodvariety/screen/lineardrawer/yoga.dart';
import 'package:foodvariety/scrolevent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodProvider with ChangeNotifier {
  Widget extendedImage(String image, double width, double height) {
    return Builder(
      builder: (context) {
        return ExtendedImage.network(
          image,
          height: height,
          width: width,
          fit: BoxFit.fill,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.rectangle,
          colorBlendMode: BlendMode.darken,
          color: Colors.black26,
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
        );
      },
    );
  }

  Widget buildListTileDrawer(String image, String name, Widget widget) {
    final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
      testDevices: <String>[],
      keywords: <String>['wallpapers', 'walls', 'amoled'],
      birthday: new DateTime.now(),
      childDirected: true,
    );
    InterstitialAd createInterstitialAd() {
      return new InterstitialAd(
          adUnitId: "ca-app-pub-1449627578050146/6769692130",
          targetingInfo: targetInfo,
          listener: (MobileAdEvent event) {
            print("Interstitial event : $event");
          });
    }

    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        return Container(
          height: height * 0.09,
          child: ListTile(
            onTap: () {
              createInterstitialAd()
                ..load()
                ..show();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => widget,
                ),
              );
            },
            leading: Image.asset(
              image,
              width: 25,
            ),
            title: Text(
              name,
              style: GoogleFonts.aBeeZee(
                fontSize: height < 600 ? 12 : 18,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildDrawer() {
    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white,
              Colors.grey[500],
            ])),
            child: ListView(
              children: <Widget>[
                Container(
                    height: height < 600 ? height * 0.25 : height * 0.3,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/drawer.jpg',
                      fit: BoxFit.fill,
                    )),
                Container(
                  height: height < 600 ? height * 0.1 : height * 0.1,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    title: Center(
                      child: Text(
                        'Home',
                        style: GoogleFonts.abhayaLibre(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: height < 600 ? 20 : 30,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black26,
                ),
                Column(
                  children: <Widget>[
                    buildListTileDrawer(
                        'assets/healthy.png', 'HEALTH TIPS', HealthTips()),
                    buildListTileDrawer(
                      'assets/weightloss.png',
                      'WEIGHT LOSS',
                      WeightLoss(),
                    ),
                    buildListTileDrawer(
                      'assets/yoga.png',
                      'YOGA BENEFITS',
                      YogaScreen(),
                    ),
                    buildListTileDrawer(
                      'assets/foodnew.png',
                      'FOOD NEWS',
                      FoodNewsScreen(),
                    ),
                    buildListTileDrawer(
                      'assets/worldcuisin.png',
                      'WORLD CUISINE',
                      WorldScreen(),
                    ),
                    buildListTileDrawer(
                      'assets/festival.png',
                      'FESTIVALS',
                      FestivalScreen(),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildStackMoreView(
    String title,
    String image,
    String country,
    double rating,
    List<String> ingredients,
    List<String> steps,
    String duration,
    String information,
  ) {
    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        return Column(
          children: <Widget>[
            Container(
              height: height * 0.07,
              width: double.infinity,
              child: Center(
                child: FittedBox(
                  child: Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontSize: height < 600 ? 17 : 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                extendedImage(image, double.infinity,
                    MediaQuery.of(context).size.height * 0.3),
                Positioned(
                  bottom: 0.1,
                  right: 0.1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => MoreDetail(
                                  title,
                                  image,
                                  country,
                                  rating,
                                  ingredients,
                                  steps,
                                  duration,
                                  information)));
                    },
                    child: Container(
                      width: height < 600 ? 50 : 70,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.black26,
                            Colors.white,
                          ]),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight:
                                Radius.circular(height < 600 ? 10 : 15),
                          )),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget animationListView({Widget widget}) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ChangeNotifierProvider.value(
              value: ScrollEvent(false),
              child: Builder(
                builder: (context) {
                  var scrolle = Provider.of<ScrollEvent>(context);
                  return NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      if (notification is ScrollStartNotification) {
                        scrolle.isScrolling = true;
                      } else if (notification is ScrollEndNotification) {
                        scrolle.isScrolling = false;
                      }
                      return true;
                    },
                    child: widget,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildStoryMoreImage(
    String image,
    String title,
    String country,
    double rating,
    List<String> ingredients,
    List<String> steps,
    String duration,
    String information,
    String image1,
    String title1,
    String country1,
    double rating1,
    List<String> ingredients1,
    List<String> steps1,
    String duration1,
    String information1,
    String image2,
    String title2,
    String country2,
    double rating2,
    List<String> ingredients2,
    List<String> steps2,
    String duration2,
    String information2,
    String image3,
    String title3,
    String country3,
    double rating3,
    List<String> ingredients3,
    List<String> steps3,
    String duration3,
    String information3,
    String image4,
    String title4,
    String country4,
    double rating4,
    List<String> ingredients4,
    List<String> steps4,
    String duration4,
    String information4,
  ) {
    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => MoreScreen(
                          image,
                          title,
                          country,
                          rating,
                          ingredients,
                          steps,
                          duration,
                          information,
                          image1,
                          title1,
                          country1,
                          rating1,
                          ingredients1,
                          steps1,
                          duration1,
                          information1,
                          image2,
                          title2,
                          country2,
                          rating2,
                          ingredients2,
                          steps2,
                          duration2,
                          information2,
                          image3,
                          title3,
                          country3,
                          rating3,
                          ingredients3,
                          steps3,
                          duration3,
                          information3,
                          image4,
                          title4,
                          country4,
                          rating4,
                          ingredients4,
                          steps4,
                          duration4,
                          information4,
                        )));
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
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
                Hero(
                    tag: image,
                    child:
                        extendedImage(image, double.infinity, double.infinity)),
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
        );
      },
    );
  }

  Widget buildStory(
    String image,
    String title,
    String country,
    double rating,
    List<String> ingredients,
    List<String> steps,
    String duration,
    String information,
  ) {
    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => PopularFoodView(title, image, country,
                        rating, ingredients, steps, duration, information)));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
              width: height < 600 ? width * 0.4 : width * 0.5,
              height: height < 600 ? height * 0.19 : height * 0.2,
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
                        height: height < 600 ? height * 0.3 : height * 0.3,
                        width: height < 600 ? width * 0.15 : width * 0.25,
                        child: extendedImage(image, null, null)),
                  ),
                  FittedBox(
                    child: Text(country,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aclonica(
                          fontSize: height < 600 ? 10 : 15,
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildStoryViewAll({
    String title,
    String image,
    String country,
    double rating,
    List<String> ingredients,
    List<String> steps,
    String duration,
    String information,
    double bottomHeight,
    double bottomWidth,
  }) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => PopularFoodView(title, image, country,
                          rating, ingredients, steps, duration, information)));
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
              child: Hero(
                tag: image,
                child: extendedImage(
                  image,
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildGridTile(
    String image,
    String title,
    String country,
    double rating,
    List<String> ingredients,
    List<String> steps,
    String duration,
    String information,
  ) {
    return Builder(
      builder: (context) {
        var animation = Provider.of<ScrollEvent>(context).isScrolling;
        final height = MediaQuery.of(context).size.height;
        return TweenAnimationBuilder(
          tween:
              Tween(begin: animation ? 0.0 : -0.2, end: animation ? -0.2 : 0.0),
          duration: Duration(milliseconds: 200),
          builder: (_, rotation, child) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.004)
                ..rotateX(rotation),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => PopularFoodView(title, image, country,
                          rating, ingredients, steps, duration, information)));
                },
                child: Container(
                  height: height < 600 ? height * 0.35 : height * 0.3,
                  child: GridTile(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: extendedImage(image, double.infinity, null)),
                      footer: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height < 600 ? height * 0.1 : height * 0.07,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Center(
                            child: Text(
                              title,
                              style: GoogleFonts.abel(
                                  fontSize: height < 600 ? 15 : 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget buildText(String title, String text) {
    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        return Container(
          alignment: Alignment.center,
          height: height < 600 ? height * 0.05 : height * 0.05,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: height < 600 ? 14 : 20,
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
      },
    );
  }
}
