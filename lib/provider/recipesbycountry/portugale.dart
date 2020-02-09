import 'package:flutter/material.dart';

class PortugalFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;

  final String imageUrl;
  final double codeFood;
  PortugalFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Portugal with ChangeNotifier {
  List<PortugalFood> _portugalRecipes = [
    PortugalFood(
      id: 'r1',
      title: 'Caldo Verde',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/04/CaldoVerde_BragaFoodTour_DayTripsFromPorto_AuthenticFoodQuest.jpg',
      codeFood: 5,
    ),
    PortugalFood(
      id: 'r1',
      title: ' Bacalhau',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/02/BacalhauaBras_eatyourwayinSintra_AuthenticFoodQuest.jpg',
      codeFood: 4,
    ),
    PortugalFood(
      id: 'r1',
      title: 'Sardines',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/01/Sardinhas_foodinPortugal_AuthenticFoodQuest.jpg',
      codeFood: 3,
    ),
    PortugalFood(
      id: 'r1',
      title: 'Canned Portuguese Sardines',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/01/CannedFish_foodinPortugal_AuthenticFoodQuest.jpg',
      codeFood: 2,
    ),
    PortugalFood(
      id: 'r1',
      title: 'Bifanas',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/06/Bifanas_Portugesedishes_AuthenticFoodQuest.jpg',
      codeFood: 5,
    ),
    PortugalFood(
      id: 'r1',
      title: ' Francesinha Sandwich',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/05/Francesinha_PortoFoods_AuthenticFoodQuest.jpg',
      codeFood: 4,
    ),
    PortugalFood(
      id: 'r1',
      title: 'Chicken Piri-Piri',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/06/Chickenpiripiri_Kolform_Portugesedishes_AuthenticFoodQuest.jpg',
      codeFood: 3,
    ),
    PortugalFood(
      id: 'r1',
      title: 'Polvo à la Lagareiro',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/06/PolvoALagareiro_Portugesedishes_AuthenticFoodQuest.jpg',
      codeFood: 2,
    ),
    PortugalFood(
      id: 'r1',
      title: 'World Famous Porco Preto',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/03/BlackPork_FoodinEvora_AuthenticFoodQuest.jpg',
      codeFood: 5,
    ),
    PortugalFood(
      id: 'r1',
      title: 'Pastel de Nata',
      country: 'Portugale',
      imageUrl:
          'https://www.authenticfoodquest.com/wp-content/uploads/2018/02/PasteisdeNata_LisbonFoodTour_AuthenticFoodQuest.jpg',
      codeFood: 4,
    ),
  ];

  List<PortugalFood> get portugalRecipes {
    return [..._portugalRecipes];
  }
}
