import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foodvariety/favoritescreen.dart';
import 'package:foodvariety/provider/cuntryfood.dart';
import 'package:foodvariety/provider/foodprovider/foodprovider.dart';
import 'package:foodvariety/widget/newscreen.dart';
import 'package:foodvariety/widget/popularscreen.dart';
import 'package:foodvariety/widget/recommendedscreen.dart';
import 'package:foodvariety/widgetscreen/foodcountry.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final foodItem = Provider.of<Food>(context);
    final text = Provider.of<FoodProvider>(context);
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value();
      },
      child: SafeArea(
        child: InnerDrawer(
          onTapClose: true,
          swipe: true,
          leftChild: text.buildDrawer(),
          scaffold: DefaultTabController(
            length: 3,
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Colors.grey[300],
                body: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
//                      Image.asset('assets/arrow.gif'),
                          IconButton(
                            icon: Icon(Icons.save),
                            onPressed: () {},
                          ),
                          Text('Home',
                              style: GoogleFonts.abhayaLibre(
                                fontSize: 25,
                              )),
                          IconButton(
                            icon: Icon(Icons.info),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (ctx) => FavoriteScreen(),
                                      ));
                                });
                              });
                            },
                          )
                        ],
                      ),
                      Container(
                        height: height < 500
                            ? height * 0.25
                            : MediaQuery.of(context).size.height * 0.13,
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          textScaleFactor: 1,
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Hello ,',
                                  style: GoogleFonts.niconne(
                                    fontSize: 35,
                                    color: Colors.red,
                                  )),
                              TextSpan(
                                  text: 'What Are You ',
                                  style: GoogleFonts.niconne(
                                    fontSize: 35,
                                    color: Colors.black,
                                  )),
                              TextSpan(
                                  text: 'Looking For ...',
                                  style: GoogleFonts.niconne(
                                    fontSize: 35,
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Food Country',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height < 500 ? height * 0.25 : height * 0.2,
                        child: ListView.builder(
                          itemCount: foodItem.food.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                              value: foodItem.food[i],
                              child:
                                  FoodCountryWidget(foodItem.food[i].pressed)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: height < 500 ? height * 0.1 : height * 0.05,
                        child: Text(
                          'VIEW ALL -',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        height: height < 500 ? height * 0.1 : height * 0.05,
                        child: TabBar(
                          indicatorColor: Colors.green,
                          indicatorWeight: 3,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          isScrollable: true,
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          tabs: <Widget>[
                            Tab(
                              text: 'Popular',
                            ),
                            Tab(
                              text: 'New',
                            ),
                            Tab(
                              text: 'Recommended',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.58,
                        child: TabBarView(
                          children: <Widget>[
                            PopularScreen(),
                            NewScreen(),
                            RecommendedScreen(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
