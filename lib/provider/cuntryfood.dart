import 'package:flutter/cupertino.dart';
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

class FoodCountry with ChangeNotifier {
  final String id;
  final String image;
  final String code;
  final String pressed;
  FoodCountry({
    this.id,
    this.image,
    this.code,
    this.pressed,
  });
}

class Food with ChangeNotifier {
  List<FoodCountry> _food = [
    FoodCountry(
      id: 'f1',
      image: 'assets/morocco.jpg',
      code: 'MA',
      pressed: '${MoroccoCountry.routeName}',
    ),
    FoodCountry(
      id: 'f2',
      image: 'assets/italy.jpg',
      code: 'IT',
      pressed: '${ItalyCountry.routeName}',
    ),
    FoodCountry(
      id: 'f3',
      image: 'assets/france.jpg',
      code: 'FR',
      pressed: '${FranceCountry.routeName}',
    ),
    FoodCountry(
      id: 'f4',
      image: 'assets/sweden.jpg',
      code: 'SE',
      pressed: '${SwedenCountry.routeName}',
    ),
    FoodCountry(
      id: 'f5',
      image: 'assets/india.jpg',
      code: 'IN',
      pressed: '${IndiaCountry.routeName}',
    ),
    FoodCountry(
      id: 'f6',
      image: 'assets/portugale.png',
      code: 'PT',
      pressed: '${PortugalCountry.routeName}',
    ),
    FoodCountry(
      id: 'f7',
      image: 'assets/thailand.png',
      code: 'TH',
      pressed: '${ThailandCountry.routeName}',
    ),
    FoodCountry(
      id: 'f8',
      image: 'assets/japan.jpg',
      code: 'JP',
      pressed: '${JapanCountry.routeName}',
    ),
    FoodCountry(
      id: 'f9',
      image: 'assets/china.jpg',
      code: 'CN',
      pressed: '${ChinaCountry.routeName}',
    ),
    FoodCountry(
      id: 'f10',
      image: 'assets/australia.png',
      code: 'AU',
      pressed: '${AustraliaCountry.routeName}',
    ),
  ];
  List<FoodCountry> get food {
    return [..._food];
  }
}
