import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_offline/flutter_offline.dart';
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
  static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>['wallpapers', 'walls', 'amoled'],
    birthday: new DateTime.now(),
    childDirected: true,
  );
  BannerAd _bannerAd;
  BannerAd createBannerAd() {
    return new BannerAd(
        adUnitId: "ca-app-pub-1449627578050146/5648182159",
        size: AdSize.fullBanner,
        targetingInfo: targetInfo,
        listener: (MobileAdEvent event) {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-1449627578050146~7758927486");
    _bannerAd = createBannerAd()
      ..load()
      ..show(anchorType: AnchorType.bottom);
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  MobileAdEvent event;
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
          leftChild: Padding(
            padding: event == MobileAdEvent.loaded ||
                    event == MobileAdEvent.failedToLoad
                ? EdgeInsets.only(bottom: 0.0)
                : EdgeInsets.only(bottom: 50),
            child: text.buildDrawer(),
          ),
          scaffold: DefaultTabController(
            length: 3,
            child: SafeArea(
              child: Scaffold(
                backgroundColor: Colors.grey[300],
                body: Builder(
                  builder: (BuildContext context) {
                    return OfflineBuilder(
                      connectivityBuilder: (BuildContext context,
                          ConnectivityResult connectivity, Widget child) {
                        final bool connected =
                            connectivity != ConnectivityResult.none;
                        return connected
                            ? Padding(
                                padding: EdgeInsets.only(
                                    left: 15,
                                    right: 20,
                                    bottom: event == MobileAdEvent.loaded ||
                                            event == MobileAdEvent.failedToLoad
                                        ? 0.0
                                        : 50),
                                child: ListView(
                                  children: <Widget>[
                                    ListTile(
                                      leading: Container(
                                          height: height < 600
                                              ? height * 0.02
                                              : height * 0.03,
                                          child:
                                              Image.asset('assets/arrow.gif')),
                                      trailing: Text('Home',
                                          style: GoogleFonts.abhayaLibre(
                                            fontSize: height < 600 ? 15 : 25,
                                          )),
                                    ),
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Hello ,',
                                              style: GoogleFonts.niconne(
                                                fontSize:
                                                    height < 600 ? 25 : 35,
                                                color: Colors.red,
                                              )),
                                          TextSpan(
                                              text: 'What Are You ',
                                              style: GoogleFonts.niconne(
                                                fontSize:
                                                    height < 600 ? 25 : 35,
                                                color: Colors.black,
                                              )),
                                          TextSpan(
                                              text: 'Looking For ...',
                                              style: GoogleFonts.niconne(
                                                fontSize:
                                                    height < 600 ? 25 : 35,
                                                color: Colors.green,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Food Country',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: height < 600 ? 12 : 17,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.red,
                                            size: height < 600 ? 20 : 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height < 600
                                          ? height * 0.2
                                          : height * 0.17,
                                      child: ListView.builder(
                                        itemCount: foodItem.food.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (ctx, i) =>
                                            ChangeNotifierProvider.value(
                                                value: foodItem.food[i],
                                                child: FoodCountryWidget(
                                                    foodItem.food[i].pressed)),
                                      ),
                                    ),
                                    Text(
                                      'VIEW ALL -',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: height < 600 ? 15 : 21,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Container(
                                      height: height < 600
                                          ? height * 0.1
                                          : height * 0.06,
                                      child: TabBar(
                                        indicatorColor: Colors.green,
                                        indicatorWeight: 3,
                                        labelColor: Colors.black,
                                        unselectedLabelColor: Colors.grey,
                                        isScrollable: true,
                                        labelStyle: TextStyle(
                                          fontSize: height < 600 ? 15 : 20,
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
                                      height: height * 0.01,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.47,
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
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Icon(
                                    Icons.signal_wifi_off,
                                    size: 300,
                                    color: Colors.red,
                                  ),
                                  Center(
                                    child: Text(
                                      'Network Failed',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                      },
                      child: Center(
                        child: Text(''),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
