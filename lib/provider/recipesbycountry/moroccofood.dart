import 'package:flutter/material.dart';

class MoroccoFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;

  final String imageUrl;
  final double codeFood;
  MoroccoFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Morocco with ChangeNotifier {
  List<MoroccoFood> _moroccoRecipes = [
    MoroccoFood(
      id: 'r1',
      title: 'TAGINE',
      country: 'Morocco',
      imageUrl:
          'https://farm6.staticflickr.com/5804/22572435230_309452a046_o.jpg',
      codeFood: 4,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'COUSCOUS',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2015/11/moroccan-couscous.jpg',
      codeFood: 5,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'ZALOUK',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2015/11/zaalouk.jpg',
      codeFood: 3,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'FISH CHERMOULA',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2015/11/what-to-eat-in-morocco.jpg',
      codeFood: 4,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'HARIRA',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2019/10/harira-moroccan-food.jpg',
      codeFood: 5,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'BASTILLA ',
      country: 'Morocco',
      imageUrl:
          'https://farm1.staticflickr.com/747/22137575634_7429992c32_o.jpg',
      codeFood: 3,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'STEAMED SHEEP HEAD',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2015/11/sheep-head-food-morocco.jpg',
      codeFood: 4,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'SPICY SARDINES',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2015/11/sardines-chermoula.jpg',
      codeFood: 5,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'SNAIL SOUP',
      country: 'Morocco',
      imageUrl:
          'https://localadventurer.com/wp-content/uploads/2015/11/snail-soup-morocco.jpg',
      codeFood: 5,
    ),
    MoroccoFood(
      id: 'r1',
      title: 'SHEBAKIA ',
      country: 'Morocco',
      imageUrl:
          'https://farm6.staticflickr.com/5752/21493413313_0c5ee7e4ac_o.jpg',
      codeFood: 4,
    ),
  ];

  List<MoroccoFood> get moroccoRecipes {
    return [..._moroccoRecipes];
  }
}
