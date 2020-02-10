import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/morefoodscreen.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:foodvariety/scrolevent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodProvider with ChangeNotifier {
  Widget animationListView({Widget widget}) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
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

  Widget buildStoryMoreImage(String image, String title) {
    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => MoreScreen(image, title)));
          },
          child: Container(
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
                  image,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  height: double.infinity,
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.black54,
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

  Widget buildStoryViewAll(
      {double bottomHeight,
      double bottomWidth,
      String title,
      String image,
      String country,
      double rating}) {
    return Builder(
      builder: (context) {
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
              child: ExtendedImage.network(
                image,
                width: double.infinity,
                fit: BoxFit.fill,
                height: double.infinity,
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
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
          ),
        );
      },
    );
  }

  Widget buildGridTile(
      String image, String title, String country, double rating) {
    return Builder(
      builder: (context) {
        var animation = Provider.of<ScrollEvent>(context).isScrolling;
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
                      builder: (ctx) =>
                          PopularFoodView(title, image, country, rating)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: GridTile(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExtendedImage.network(
                          image,
                          fit: BoxFit.cover,
                          width: double.infinity,
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
                      footer: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.black54,
                          child: ListTile(
                            title: Center(
                              child: Text(
                                title,
                                style: GoogleFonts.abel(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
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
      },
    );
  }

  Widget buildStory(String image, String title) {
    return Builder(
      builder: (context) {
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
      },
    );
  }
}
