import 'package:flutter/cupertino.dart';

class Weight with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final List<String> suite;

  Weight({this.image, this.title, this.description, this.suite});
}

class WeightFuture with ChangeNotifier {
  List<Weight> _weight = [
    Weight(
      image:
          'https://c.ndtvimg.com/2018-12/mhav336g_spinach-juice_120x90_01_December_18.jpg',
      title:
          'Weight Loss Recipe: This 10 Minute Spinach Soup Is Sure To Be A Hit With Dieters',
      description:
          'Unlike juicing, you do not lose a whole lot of fibre in \'souping\', and fibre is a crucial component of a weight-loss diet.',
      suite: [
        "There is something about a big bowl of hot comforting soup that makes us forget all our day's woes. Soup has been our go-to favourite in sickness and in health. There are reasons aplenty why it is such a hit with dieters. It is filling; the high-liquid content of soups imparts a sense of satiety. If you feel full, you would not give in to cravings so easily and maintain a safe distance from all things fried and fattening. You can also be super creative with your soup preparation too and make it healthier. Think herbs, spices, fresh veggies, mushrooms and greens. Unlike juicing, you do not lose a whole lot of fibre in 'souping', and fibre is a crucial component of a weight-loss diet. ",
      ],
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2020-02/tgijn2r8_cabbage-salad_120x90_14_February_20.jpg',
      title:
          'Weight Loss: This Low-Cal Stir-Fry Cabbage Salad Packs A Punch Of Fibre ',
      description:
          'This weight loss-friendly salad is a mish-mash of health-giving foods. Other than cabbage, the salad comprises other nutritional veggies like beans, carrots, and bell pepper.',
      suite: [
        "Wondering what all to include in your weight loss diet? A healthy low-cal salad is the way to go. It is the best meal to jumpstart your fitness journey. The assemblage of nutritious raw foods in a salad bowl is the best thing you can have for a light and healthy meal. This cabbage salad can be your first ideal pick. Cabbage is one of the most treasured cruciferous vegetables to reckon with, especially when it comes to weight loss. Why, you ask? It is because of the host of nutrients and weight-loss-boosting properties it offers.",
      ],
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2020-02/2gjt6dng_cucumber-salad_120x90_11_February_20.jpg',
      title:
          'Weight Loss Tips: This Low-Cal Cucumber Salad Is Ideal For A Light Meal',
      description:
          'This cucumber salad recipe by noted food vlogger Manjula Jain is not your usual bland salad. It is creamy, just like regular pasta, yet healthy too. Cucumber is a low cal food,',
      suite: [
        "‘No-White Diet' or ‘No-White Foods Diet' is not a diet plan; it's merely a strategy to achieve effective weight loss. If you are of those who are puzzled by all the fad diets around clouding your judgement, you may follow this simplified approach to mend your eating habits. No-white diet simply implies elimination of foods with white flours, starch and sugar. These foods are highly processed, contain high amount of carbohydrates and starch, have high glycaemic index value, and offer lower nutritional value as compared to their colourful peers. Discarding or limiting these foods may help you lose weight and may also help in stabilising blood sugar level."
      ],
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2020-02/1h4h5gq_baking-food_120x90_07_February_20.jpg',
      title: 'No-White Diet For Weight Loss: What Are Its True Colours?',
      description:
          'No-white diet simply implies elimination of foods with white flours, starch and sugar. These foods are highly processed, contain high amount of carbohydrates and starch, have high glycaemic index value,',
      suite: [
        "Think bhindi and our mind is crowded with the run-of-the-mill preparations. The most famous of which is the bhindi-ki-sabzi that is commonly savoured with roti or rice. Yet, bhindi manages to have an enviable fan-base among Indians. This dark-green podded vegetable is a treasure trove of nutrients. It is rich in fibre, vitamin B6 and folate. They play an instrumental role in lowering bad cholesterol levels. The good amount of beta-carotene and lutein present in okra also helps boost vision. There are many more reasons to love bhindi. Apart from its rich nutritive profile, bhindi makes for an excellent addition to our salads, curries and snacks. Yes, you heard us. Our humble bhindi can prove to be fairly versatile, provided you are willing to experiment. Bhindi falls in the category of low-calorie veggies and contains no saturated fats. This makes bhindi a perfect addition to the diet of a weight watcher. Include okra in your diet and add flavours to your meal while maintaining a low-calorie count, which helps manage weight."
      ],
    ),
  ];
  List<Weight> get weight {
    return [..._weight];
  }
}
