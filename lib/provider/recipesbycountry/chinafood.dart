import 'package:flutter/material.dart';

class ChinaFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double codeFood;
  ChinaFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class China with ChangeNotifier {
  List<ChinaFood> _chinaRecipes = [
    ChinaFood(
      id: 'r1',
      title: 'Dim Sums',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2015-10/dimsum_625x350_51446202982.jpg',
      codeFood: 3,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Hot & Sour Soup',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/soup-625_625x350_81466064298.jpg',
      codeFood: 4,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Quick Noodles',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/noodles-625_625x350_41466064269.jpg',
      codeFood: 5,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Szechwan Chicken',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2015-02/chilli-chicken_625x350_81424323578.jpg',
      codeFood: 4,
    ),
    ChinaFood(
      id: 'r1',
      title: ' Spring Rolls',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2015-02/spring-roll_625x350_51424323845.jpg',
      codeFood: 3,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Stir Fried Tofu',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/tofu-with-rice_625x350_81466070125.jpg',
      codeFood: 5,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Shitake Fried Rice ',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2015-02/mushroom-rice_625x350_61424324920.jpg',
      codeFood: 5,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Chicken with Chestnuts',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/dhaniwal-chicken_625x350_71464783643.jpg',
      codeFood: 4,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Honey Chilli Potato',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2018-01/honey-chilli-potato_620x330_81514872067.jpg',
      codeFood: 5,
    ),
    ChinaFood(
      id: 'r1',
      title: 'Wok Tossed Veggies in Honey',
      country: 'China',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/veggies_625x350_71466071339.jpg',
      codeFood: 4,
    ),
  ];

  List<ChinaFood> get chinaRecipes {
    return [..._chinaRecipes];
  }
}
