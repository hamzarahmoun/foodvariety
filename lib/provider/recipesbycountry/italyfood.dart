import 'package:flutter/material.dart';

class ItalyFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;

  final String imageUrl;
  final double codeFood;
  ItalyFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Italy with ChangeNotifier {
  List<ItalyFood> _italyRecipes = [
    ItalyFood(
      id: 'r1',
      title: 'Pizza',
      country: 'Italy',
      imageUrl:
          'https://i0.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2011/05/DSC_0195.jpg?ssl=1',
      codeFood: 5,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Lasagna',
      country: 'Italy',
      imageUrl:
          'https://i1.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2016/07/11735294004_b68f0ab3ef_k.jpg?ssl=1',
      codeFood: 4,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Fiorentina Steak',
      country: 'Italy',
      imageUrl:
          'https://i2.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2011/05/T-bone-on-dish-fiorentina.jpg?ssl=1',
      codeFood: 3,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Tiramisu',
      country: 'Italy',
      imageUrl:
          'https://www.bonappetour.com/assets/images/asset_pictures/1426579346-1465627.jpeg',
      codeFood: 5,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Ossobuco',
      country: 'Italy',
      imageUrl:
          'https://i1.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2017/02/Osso-Buco.jpg?w=1024&ssl=1',
      codeFood: 4,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Risotto',
      country: 'Italy',
      imageUrl:
          'https://i0.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2017/02/9129379430_62611c061e_o.jpg?w=1000&ssl=1',
      codeFood: 3,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Saltimbocca',
      country: 'Italy',
      imageUrl:
          'https://www.bonappetour.com/assets/images/asset_pictures/1426578956-9821121.jpeg',
      codeFood: 4,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Osso buco alla Milanese',
      country: 'Italy',
      imageUrl:
          'https://www.bonappetour.com/assets/images/asset_pictures/1426577420-5683406.jpeg',
      codeFood: 5,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Arancini',
      country: 'Italy',
      imageUrl:
          'https://www.bonappetour.com/assets/images/asset_pictures/1426576976-4881966.jpeg',
      codeFood: 5,
    ),
    ItalyFood(
      id: 'r1',
      title: 'Lasagne',
      country: 'Italy',
      imageUrl:
          'https://www.bonappetour.com/blog/wp-content/uploads/2015/03/8433819403_2de9b11f7a_k-1500x1000.jpg',
      codeFood: 3,
    ),
  ];

  List<ItalyFood> get italyRecipes {
    return [..._italyRecipes];
  }
}
