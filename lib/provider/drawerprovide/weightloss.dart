import 'package:flutter/cupertino.dart';

class Weight with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String suite;

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
      suite: '',
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2020-02/tgijn2r8_cabbage-salad_120x90_14_February_20.jpg',
      title:
          'Weight Loss: This Low-Cal Stir-Fry Cabbage Salad Packs A Punch Of Fibre ',
      description:
          'This weight loss-friendly salad is a mish-mash of health-giving foods. Other than cabbage, the salad comprises other nutritional veggies like beans, carrots, and bell pepper.',
      suite: '',
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2020-02/2gjt6dng_cucumber-salad_120x90_11_February_20.jpg',
      title:
          'Weight Loss Tips: This Low-Cal Cucumber Salad Is Ideal For A Light Meal',
      description:
          'This cucumber salad recipe by noted food vlogger Manjula Jain is not your usual bland salad. It is creamy, just like regular pasta, yet healthy too. Cucumber is a low cal food,',
      suite: '',
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2020-02/1h4h5gq_baking-food_120x90_07_February_20.jpg',
      title: 'No-White Diet For Weight Loss: What Are Its True Colours?',
      description:
          'No-white diet simply implies elimination of foods with white flours, starch and sugar. These foods are highly processed, contain high amount of carbohydrates and starch, have high glycaemic index value,',
      suite: '',
    ),
    Weight(
      image:
          'https://c.ndtvimg.com/2019-12/47jkato8_soup_240x180_31_December_19.JPG',
      title: 'Weight Loss: This Bhindi Soup May Amp Up Your Weight Loss Diet',
      description:
          'Apart from its rich nutritive profile, bhindi makes for an excellent addition to our salads, curries and snacks. Yes, you heard us. Our humble bhindi can prove to be fairly versatile.',
      suite: '',
    ),
  ];
  List<Weight> get weight {
    return [..._weight];
  }
}
