import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/screen/detaildrawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'foodprovider.dart';

class FoodProvider1 with ChangeNotifier {
  Widget buildCard(
      String image, String title, String description, List<String> suite) {
    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
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
                  height: height * 0.35,
                  child: Row(
                    children: <Widget>[
                      text.extendedImage(
                          image,
                          MediaQuery.of(context).size.width * 0.45,
                          double.infinity),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: height * 0.3,
                        child: ListTile(
                          title: Text(
                            title,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.aldrich(
                              fontWeight: FontWeight.bold,
                              fontSize: height < 600 ? 11 : 18,
                            ),
                          ),
                          subtitle: Text(
                            description,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height < 600 ? 9 : 14),
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
        final height = MediaQuery.of(context).size.height;
        return Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Scaffold(
              backgroundColor: Colors.grey[200],
              body: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      text.extendedImage(image, double.infinity, height * 0.4),
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
                        size: height < 600 ? 20 : 40,
                      ),
                      title: Text(
                        'Total Time :',
                        style: GoogleFonts.niconne(
                            fontSize: height < 600 ? 20 : 30,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        duration,
                        style: GoogleFonts.niconne(
                            fontSize: height < 600 ? 20 : 30,
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
                              fontSize: height < 600 ? 20 : 30,
                              color: Colors.deepOrange,
                            ),
                          ),
                          TyperAnimatedTextKit(
                            text: [information],
                            textAlign: TextAlign.justify,
                            isRepeatingAnimation: false,
                            textStyle: GoogleFonts.acme(
                              fontSize: height < 600 ? 20 : 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }

  Widget buildStepScreen(String image, List<String> steps) {
    return Builder(
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        final text = Provider.of<FoodProvider>(context);
        return Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Scaffold(
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
                                  steps[index],
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height < 600 ? 15 : 20,
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
          ),
        );
      },
    );
  }

  Widget buildIngredientScreen(String image, List<String> ingredient) {
    return Builder(
      builder: (context) {
        final text = Provider.of<FoodProvider>(context);
        final height = MediaQuery.of(context).size.height;
        return Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Scaffold(
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                                      fontSize: height < 600 ? 15 : 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50, right: 30),
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
          ),
        );
      },
    );
  }
}
