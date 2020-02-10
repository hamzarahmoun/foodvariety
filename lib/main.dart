import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/cuntryfood.dart';
import 'package:foodvariety/provider/foodprovider.dart';
import 'package:foodvariety/provider/recipesbycountry/australifood.dart';
import 'package:foodvariety/provider/recipesbycountry/chinafood.dart';
import 'package:foodvariety/provider/recipesbycountry/francefood.dart';
import 'package:foodvariety/provider/recipesbycountry/indiafood.dart';
import 'package:foodvariety/provider/recipesbycountry/italyfood.dart';
import 'package:foodvariety/provider/recipesbycountry/japanfood.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/provider/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/provider/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/screen/recipesbycountry/australiafood.dart';
import 'package:foodvariety/screen/recipesbycountry/chinafood.dart';
import 'package:foodvariety/screen/recipesbycountry/francefood.dart';
import 'package:foodvariety/screen/recipesbycountry/indiafood.dart';
import 'package:foodvariety/screen/recipesbycountry/italyfood.dart';
import 'package:foodvariety/screen/recipesbycountry/japan.dart';
import 'package:foodvariety/screen/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/screen/recipesbycountry/portugale.dart';
import 'package:foodvariety/screen/recipesbycountry/swedenfood.dart';
import 'package:foodvariety/screen/recipesbycountry/thailandfood.dart';
import 'package:foodvariety/startedpage.dart';
import 'package:provider/provider.dart';

import 'provider/recipesbycountry/moroccofood.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: FoodProvider()),
        ChangeNotifierProvider.value(value: Food()),
        ChangeNotifierProvider.value(value: FoodCountry()),
        ChangeNotifierProvider.value(value: Morocco()),
        ChangeNotifierProvider.value(value: Australia()),
        ChangeNotifierProvider.value(value: China()),
        ChangeNotifierProvider.value(value: France()),
        ChangeNotifierProvider.value(value: India()),
        ChangeNotifierProvider.value(value: Italy()),
        ChangeNotifierProvider.value(value: Japan()),
        ChangeNotifierProvider.value(value: Portugal()),
        ChangeNotifierProvider.value(value: Sweden()),
        ChangeNotifierProvider.value(value: Thailand()),
        ChangeNotifierProvider.value(value: MoroccoFood()),
        ChangeNotifierProvider.value(value: AustraliaFood()),
        ChangeNotifierProvider.value(value: ChinaFood()),
        ChangeNotifierProvider.value(value: FranceFood()),
        ChangeNotifierProvider.value(value: IndiaFood()),
        ChangeNotifierProvider.value(value: ItalyFood()),
        ChangeNotifierProvider.value(value: JapanFood()),
        ChangeNotifierProvider.value(value: PortugalFood()),
        ChangeNotifierProvider.value(value: SwedenFood()),
        ChangeNotifierProvider.value(value: ThailandFood()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartedPage(),
        routes: {
          MoroccoCountry.routeName: (ctx) => MoroccoCountry(),
          AustraliaCountry.routeName: (ctx) => AustraliaCountry(),
          IndiaCountry.routeName: (ctx) => IndiaCountry(),
          ChinaCountry.routeName: (ctx) => ChinaCountry(),
          JapanCountry.routeName: (ctx) => JapanCountry(),
          ItalyCountry.routeName: (ctx) => ItalyCountry(),
          ThailandCountry.routeName: (ctx) => ThailandCountry(),
          PortugalCountry.routeName: (ctx) => PortugalCountry(),
          SwedenCountry.routeName: (ctx) => SwedenCountry(),
          FranceCountry.routeName: (ctx) => FranceCountry(),
        },
      ),
    );
  }
}
