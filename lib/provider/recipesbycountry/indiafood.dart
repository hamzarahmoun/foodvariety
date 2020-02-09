import 'package:flutter/material.dart';

class IndiaFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double codeFood;
  IndiaFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class India with ChangeNotifier {
  List<IndiaFood> _indiaRecipes = [
    IndiaFood(
      id: 'r1',
      title: 'Rogan Josh',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2015-03/mutton-korma_625x350_51426244304.jpg',
      codeFood: 4,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Butter Chicken',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2015-01/butter-chicken_625x350_71421325695.jpg',
      codeFood: 5,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Bhapaa Aloo',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/bhapaa-aloo_625x350_71465281820.jpg',
      codeFood: 3,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Banjari Gosht',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-03/mutton-curry_625x350_41458549653.jpg',
      codeFood: 5,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Chicken Stew and Appam',
      country: 'India',
      imageUrl: 'https://i.ndtvimg.com/i/2016-06/stew_625x350_41466057826.jpg',
      codeFood: 2,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Kakori Kebab',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-03/kakori-kebabs-625_625x350_41459348085.jpg',
      codeFood: 4,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Hyderabadi Biryani',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-01/biryani_625x350_81452497196.jpg',
      codeFood: 3,
    ),
    IndiaFood(
      id: 'r1',
      title: ' Dhokla',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-03/dhokla_625x350_41457508751.jpg',
      codeFood: 5,
    ),
    IndiaFood(
      id: 'r1',
      title: 'Sali Boti',
      country: 'India',
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/chicken_625x350_81465813088.jpg',
      codeFood: 4,
    ),
    IndiaFood(
      id: 'r1',
      title: ' Idli Sambhar',
      country: 'India',
      imageUrl: 'https://i.ndtvimg.com/i/2015-01/idli_625x350_61421915244.jpg',
      codeFood: 5,
    ),
  ];

  List<IndiaFood> get indiaRecipes {
    return [..._indiaRecipes];
  }
}
