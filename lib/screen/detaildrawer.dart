import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerDetail extends StatelessWidget {
  final String image;
  final List<String> suite;
  final String title;
  DrawerDetail(this.image, this.suite, this.title);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Scaffold(
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
                        height: height * 0.15,
                        width: double.infinity,
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.zCOOLQingKeHuangYou(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: height < 600 ? 22 : 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: suite.length,
                        itemBuilder: (ctx, i) {
                          return Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                suite[i],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.abrilFatface(
                                  color: Colors.white,
                                  fontSize: height < 600 ? 15 : 25,
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              )
            ],
          )),
    );
  }
}
