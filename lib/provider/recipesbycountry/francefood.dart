import 'package:flutter/material.dart';

class FranceFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double codeFood;
  FranceFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class France with ChangeNotifier {
  List<FranceFood> _franceRecipes = [
    FranceFood(
      id: 'r1',
      title: 'Soupe à l’oignon',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714571.jpg',
      codeFood: 4,
    ),
    FranceFood(
      id: 'r1',
      title: 'Coq au vin',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714572.jpg',
      codeFood: 5,
    ),
    FranceFood(
      id: 'r1',
      title: 'Cassoulet',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/701336.jpg',
      codeFood: 3,
    ),
    FranceFood(
      id: 'r1',
      title: 'Beef bourguignon',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714573.jpg',
      codeFood: 4,
    ),
    FranceFood(
      id: 'r1',
      title: 'Chocolate soufflé',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714574.jpg',
      codeFood: 5,
    ),
    FranceFood(
      id: 'r1',
      title: 'Flamiche',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714575.jpg',
      codeFood: 4,
    ),
    FranceFood(
      id: 'r1',
      title: 'Confit de canard',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/701331.jpg',
      codeFood: 3,
    ),
    FranceFood(
      id: 'r1',
      title: 'Nicoise salad',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714578.jpg',
      codeFood: 5,
    ),
    FranceFood(
      id: 'r1',
      title: 'Ratatouille',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714583.jpg',
      codeFood: 4,
    ),
    FranceFood(
      id: 'r1',
      title: 'Tarte tatin',
      country: 'France',
      imageUrl: 'https://www.expatica.com/app/uploads/media/upload/714581.jpg',
      codeFood: 3,
    ),
  ];

  List<FranceFood> get franceRecipes {
    return [..._franceRecipes];
  }
}
