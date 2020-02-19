import 'package:flutter/cupertino.dart';

class FoodNews with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String suite;

  FoodNews({this.image, this.title, this.description, this.suite});
}

class FoodNewsFuture with ChangeNotifier {
  List<FoodNews> _foodNews = [
    FoodNews(
      image:
          'https://c.ndtvimg.com/2020-02/kcd3udo_vegan_120x90_10_February_20.jpg',
      title:
          'Plant-Based Diet May Reduce Heart-Related Risks; 5 Vegan Recipes For Healthy Heart',
      description:
          'A recent study stated that reducing the intake of animal products and adopting plant-based dietcan help in decreasing the risk of heart disease.',
      suite: '',
    ),
    FoodNews(
      image:
          'https://c.ndtvimg.com/2018-09/e2cq3748_mediterranean-diet-_120x90_22_September_18.jpg',
      title:
          'Mediterranean Diet May Help Reduce Frailty And Cognitive Decline In Old Age: Study ',
      description:
          'The beneficial changes to the gut microbiome may do wonders for the elderly, the researchers suggested.',
      suite: '',
    ),
    FoodNews(
      image:
          'https://c.ndtvimg.com/2020-02/a34h1kc8_malaika-arora_120x90_18_February_20.jpg',
      title:
          'Malaika Arora Has A \'Vegan Pizza Kinda Day\' But She Loves Her Biryani Too',
      description:
          'Malaika Arora took her vegan journey a step forward with a vegan pizza that was made of a number of colourful veggies.',
      suite: '',
    ),
    FoodNews(
      image: 'https://c.ndtvimg.com/curry-leaves-240_120x90_1526636953441.jpg',
      title:
          'Curry Leaves Promote Gut Health, Manage Diabetes And More - Study (Curry Leaves Recipes Inside)',
      description:
          'Curry Leaves: This local Indian herb (which is used in both its fresh and dry form) has high nutritional value that benefits our health, mind and body.',
      suite: '',
    ),
    FoodNews(
      image:
          'https://c.ndtvimg.com/2020-02/56cmgmpg_viral-mice-photo_120x90_18_February_20.jpg',
      title:
          'Have You Seen This Viral Photo Of Mice Fighting Over The Last Crumb Of Food?',
      description:
          'Titled \'Station Squabble\', Sam Rowley\'s click freezes in time the tussle between two mice for the last crumb of food at a London Tube station.',
      suite: '',
    ),
  ];
  List<FoodNews> get foodNews {
    return [..._foodNews];
  }
}
