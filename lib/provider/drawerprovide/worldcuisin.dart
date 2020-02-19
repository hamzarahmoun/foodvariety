import 'package:flutter/cupertino.dart';

class WorldFood with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String suite;

  WorldFood({this.image, this.title, this.description, this.suite});
}

class WorldFoodFuture with ChangeNotifier {
  List<WorldFood> _worldFood = [
    WorldFood(
      image:
          'https://c.ndtvimg.com/2020-02/liucso9_sabudana_120x90_13_February_20.jpg',
      title:
          'Indian Cooking Tips: Move Over Sabudana Vada And Khichdi; Try Sabudana Paratha Instead (Recipe Inside)',
      description:
          'Tapioca or sabudana is a non-cereal food source and consists of starchy carbohydrate; hence it is consumed widely during any Hindu fasting ritual. However, sabudana dishes are enjoyed year-round.',
      suite: '',
    ),
    WorldFood(
      image:
          'https://c.ndtvimg.com/2020-02/ku3mf3mg_aloevera-_120x90_13_February_20.jpg',
      title:
          'This Aloe-Vera Sharbat Is A Popular Bangladeshi Drink, Why You Should Try It Too!',
      description:
          'Aloe vera is generally consumed in form of juice. Regular consumption helps in fighting cholesterol, which promotes heart health.',
      suite: '',
    ),
    WorldFood(
      image:
          'https://c.ndtvimg.com/2020-02/15ftejko_chutney_120x90_06_February_20.jpg',
      title:
          'Indian Cooking Tips: Give The Boring Raw Papaya A ‘Plastic’ Chutney Twist',
      description:
          'Raw papaya has anti-bacterial properties and contains the highest concentration of papain. This promotes better digestion.',
      suite: '',
    ),
    WorldFood(
      image:
          'https://c.ndtvimg.com/2019-03/8v9klc1g_kheer_240x180_04_March_19.jpg',
      title:
          'Move Over, Chawal Ki Kheer! Try This Delicious Mooli Ki Kheer At Home (Recipe Inside)',
      description:
          'Radish has several health benefits. It helps to cleanse our liver and stomach.',
      suite: '',
    ),
    WorldFood(
      image:
          'https://i.ndtvimg.com/i/2018-04/golden-temple_240x180_81524587256.jpg',
      title:
          'Beyond Amritsar\'s Popular Eateries: 4 Culinary Experiences That Take You Off The Beaten Track',
      description:
          'Amritsar is a ride of its own, the flavours, the places, the experience. Here\'s a few things you should know about Amritsar\'s culinary background.',
      suite: '',
    ),
  ];
  List<WorldFood> get worldFood {
    return [..._worldFood];
  }
}
