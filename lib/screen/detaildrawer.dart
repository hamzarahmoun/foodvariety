import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrawerDetail extends StatelessWidget {
  final String image;
  final String suite;
  final String title;
  DrawerDetail(this.image, this.suite, this.title);

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<FoodProvider>(context);
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
          children: <Widget>[
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
              width: double.infinity,
              height: double.infinity,
              child: ExtendedImage.network(
                image,
                fit: BoxFit.fill,
                color: Colors.black54,
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
            ),
            Column(
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: double.infinity,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.zCOOLQingKeHuangYou(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: double.infinity,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          suite,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.abrilFatface(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
