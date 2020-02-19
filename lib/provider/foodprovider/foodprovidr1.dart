import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/screen/detaildrawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'foodprovider.dart';

class FoodProvider1 with ChangeNotifier {
  Widget buildCard(
      String image, String title, String description, String suite) {
    return Builder(
      builder: (context) {
        final text = Provider.of<FoodProvider>(context);
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DrawerDetail(image, suite, title)));
          },
          child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                elevation: 10,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Row(
                    children: <Widget>[
                      text.extendedImage(
                          image,
                          MediaQuery.of(context).size.width * 0.45,
                          double.infinity),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListTile(
                          title: Text(
                            title,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.aldrich(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            description,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }

  Widget buildInformationScreen(
      String image, String duration, String information, Widget widget) {
    return Builder(
      builder: (context) {
        final text = Provider.of<FoodProvider>(context);
        return Scaffold(
            backgroundColor: Colors.grey[200],
            body: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    text.extendedImage(image, double.infinity,
                        MediaQuery.of(context).size.height * 0.4),
                    widget,
                  ],
                ),
                Card(
                  color: Colors.grey[300],
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: Colors.red,
                      size: 40,
                    ),
                    title: Text(
                      'Total Time :',
                      style: GoogleFonts.niconne(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      duration,
                      style: GoogleFonts.niconne(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'About Food :',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.adamina(
                            fontSize: 30,
                            color: Colors.deepOrange,
                          ),
                        ),
                        TyperAnimatedTextKit(
                          text: [information],
                          textAlign: TextAlign.justify,
                          isRepeatingAnimation: false,
                          textStyle: GoogleFonts.acme(
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }

  Widget buildStepScreen(String image, List<String> steps) {
    return Builder(
      builder: (context) {
        final text = Provider.of<FoodProvider>(context);
        return Scaffold(
          body: Stack(
            children: <Widget>[
              text.extendedImage(image, double.infinity, double.infinity),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3,
                  sigmaY: 3,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Text(
                        'INSTRUCTIONS',
                        style:
                            GoogleFonts.aladin(color: Colors.red, fontSize: 25),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (ctx, index) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.black87,
                                child: Text(
                                  '${(index + 1)}',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text(
                                steps[index],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 30),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        itemCount: steps.length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildIngredientScreen(String image, List<String> ingredient) {
    return Builder(
      builder: (context) {
        final text = Provider.of<FoodProvider>(context);
        return Scaffold(
          body: Stack(
            children: <Widget>[
              text.extendedImage(image, double.infinity, null),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3,
                  sigmaY: 3,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Text(
                          'INGREDIENTS',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.aladin(
                              color: Colors.red, fontSize: 25),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (ctx, index) => Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  child: Text(
                                    '${(index + 1)}',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  ingredient[index],
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 30),
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          itemCount: ingredient.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
