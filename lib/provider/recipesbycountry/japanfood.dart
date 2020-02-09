import 'package:flutter/material.dart';

class JapanFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;

  final String imageUrl;
  final double codeFood;
  JapanFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Japan with ChangeNotifier {
  List<JapanFood> _japanRecipes = [
    JapanFood(
      id: 'r1',
      title: 'Sushi & Sashimi',
      country: 'Japan',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2019/08/cb3c0x-2.jpg',
      codeFood: 5,
    ),
    JapanFood(
      id: 'r1',
      title: 'Tempura',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/af7QNQ5J_tempura.jpg',
      codeFood: 2,
    ),
    JapanFood(
      id: 'r1',
      title: 'Kare-Raisu',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/teGdH4eA_japanese-curry-01.jpg',
      codeFood: 5,
    ),
    JapanFood(
      id: 'r1',
      title: 'Soba ',
      country: 'Japan',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2019/08/t93wwp.jpg',
      codeFood: 4,
    ),
    JapanFood(
      id: 'r1',
      title: 'Shabu Shabu',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/y3SVAUw7_shabu-shabu.jpg',
      codeFood: 3,
    ),
    JapanFood(
      id: 'r1',
      title: 'Miso Soup',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/iwngZglC_miso-soup-tofu-u.jpg',
      codeFood: 4,
    ),
    JapanFood(
      id: 'r1',
      title: 'Yakitori',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/J7pDli8P_beef-yakitori-full.jpg',
      codeFood: 5,
    ),
    JapanFood(
      id: 'r1',
      title: 'Onigiri',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/l9vMtMft_onigiri-collage.jpg',
      codeFood: 4,
    ),
    JapanFood(
      id: 'r1',
      title: 'Udon',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/5voIz4EK_udon-noodles-thinkstock.jpg',
      codeFood: 4,
    ),
    JapanFood(
      id: 'r1',
      title: 'Gyudon',
      country: 'Japan',
      imageUrl:
          'https://cdn.triplelights.com/uploads/2016-04/ELyRmYOk_gyudon-toppings.jpg',
      codeFood: 2,
    ),
  ];

  List<JapanFood> get japanRecipes {
    return [..._japanRecipes];
  }
}
