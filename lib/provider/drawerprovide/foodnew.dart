import 'package:flutter/cupertino.dart';

class FoodNews with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final List<String> suite;

  FoodNews({this.image, this.title, this.description, this.suite});
}

class FoodNewsFuture with ChangeNotifier {
  List<FoodNews> _foodNews = [
    FoodNews(
      image:
          'https://c.ndtvimg.com/2020-02/kcd3udo_vegan_120x90_10_February_20.jpg',
      title:
          'Plant-Based Diet May Reduce Heart-Related Risks; 3 Vegan Recipes For Healthy Heart',
      description:
          'A recent study stated that reducing the intake of animal products and adopting plant-based dietcan help in decreasing the risk of heart disease.',
      suite: [
        "Here're 3 Lip-Smacking Recipes That Will Make Your Vegan Diet Flavourful:",
        "Vegan Gajar ka Halwa:",
        "Gajar ka halwa is one of the most loved desserts across India, especially during the winters.",
        "",
        "Dates and Figs Fudge:",
        "This dates and figs fudge can be a go to dessert if you are craving for some sweet indulgence.",
        "",
        "Vegan Pumpkin Pancakes:",
        "Milk and flour are the basic ingredients for pancakes. But think about the ones who have gone vegan and dairy-free.",
      ],
    ),
    FoodNews(
      image:
          'https://c.ndtvimg.com/2018-09/e2cq3748_mediterranean-diet-_120x90_22_September_18.jpg',
      title:
          'Mediterranean Diet May Help Reduce Frailty And Cognitive Decline In Old Age: Study ',
      description:
          'The beneficial changes to the gut microbiome may do wonders for the elderly, the researchers suggested.',
      suite: [
        "Old age can prove to be a tough time for many, but if the latest study is to be believed, Mediterranean diet for a year may help reduce frailty in old age, make minds sharper and increase the quality of life for the elderly. ",
        " The study was published in the journal 'Gut'. The study revealed the beneficial effects of Mediterranean diet and how it boosts the types of gut bacteria linked to 'healthy' ageing, while reducing those associated with harmful inflammation in older people."
      ],
    ),
    FoodNews(
      image:
          'https://c.ndtvimg.com/2020-02/a34h1kc8_malaika-arora_120x90_18_February_20.jpg',
      title:
          'Malaika Arora Has A \'Vegan Pizza Kinda Day\' But She Loves Her Biryani Too',
      description:
          'Malaika Arora took her vegan journey a step forward with a vegan pizza that was made of a number of colourful veggies.',
      suite: [
        "Malaika Arora recently went public about her decision to go vegan. The fittest celebrity has been experimenting with the vegan diet for a couple of months now. Her diet primarily consists of vegetable-based food that is simple and home cooked. ",
        "She had revealed in an Instagram story about how turning vegan changed her life, and how experimenting with vegan food was a challenge but so worth it. She took her vegan journey a step forward with a vegan pizza that was made of a number of colourful veggies."
      ],
    ),
    FoodNews(
      image: 'https://c.ndtvimg.com/curry-leaves-240_120x90_1526636953441.jpg',
      title:
          'Curry Leaves Promote Gut Health, Manage Diabetes And More - Study (Curry Leaves Recipes Inside)',
      description:
          'Curry Leaves: This local Indian herb (which is used in both its fresh and dry form) has high nutritional value that benefits our health, mind and body.',
      suite: [
        "Curry leaves, better known as 'kadi patta', as we all know is an integral part of Indian cooking, especially in the southern part of the country. Its strong flavour is one of the factors that give a south Indian dish its own identity. Other than its varied usage as kitchen ingredient, this local Indian herb (which is used in both its fresh and dry form) has high nutritional value that benefits our health, mind and body.",
        " Moreover, they aid weight loss. Curry leaves are rich source of iron and vitamins. They are also said to be good source of antioxidants and have antibacterial properties.",
        "Health Benefits Of Curry Leaves",
        "Diabetes Management",
        "Ease Pregnancy Symptoms",
        "Promotes Gastrointestinal Health",
      ],
    ),
  ];
  List<FoodNews> get foodNews {
    return [..._foodNews];
  }
}
