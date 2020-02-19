import 'package:flutter/cupertino.dart';

class Festival with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String suite;

  Festival({this.image, this.title, this.description, this.suite});
}

class FestivalFuture with ChangeNotifier {
  List<Festival> _festival = [
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/c62r96p8_240x180_120x90_13_January_20.jpg',
      title: 'What\'s You Dont\'t Now About Pongal Festival',
      description:
          'Pongal Recipes: Like most harvest festivals across India, Pongal coincides with the beginning of the six-month northward journey of the sun.',
      suite:
          ' The festival is celebrated on the first day of the Tamil month of \'Thai\' (pronounced thigh) and is often referred to as Thai Pongal.'
          'Pongal Recipes: Like most harvest festivals across India, '
          '  The entire festivities last for four days (January 15-18),'
          ' and just like the extended Puja weekend in West Bengal, the entire state of Tamil Nadu gets into festive mode.'
          ' With about half its population in urban centres, Tamil Nadu is India\'s one of the most urbanised'
          ' large states and yet Pongal always conjures up images of rural Tamil Nadu, where this is by far the biggest festival.'
          'It\'s Pongal Thirunaal (falls on January 15th this year) or Pongal day that is the most important day of the festivities. '
          'In many ways this festival is a \'thanksgiving\' to the Sun god for an abundant harvest and begins with cooking Pongal in large earthen pots outdoors. Pongal is a play on the Tamil word \'Pongu\' (to boil over). Many households prepare Ven Pongal (a popular breakfast item across Tamil Nadu) - spiced with whole peppercorns and curry leaves, and sweet (Sakkarai) Pongal, which is also a delicacy at popular Chennai restaurants like Murugan Idli shop.(Also Read: Pongal 2020: Date,',
    ),
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/1u4nutok_240x180_120x90_13_January_20.jpg',
      title:
          'Makar Sankranti 2020:the First Festivals that take place as a new year starts ',
      description:
          'On this festive celebration, we bring to you a healthy alternative to all your favourite Makar Sankranti dishes.',
      suite:
          'With a myriad of colourful kites flying in the sky and people enjoying the soothing winter sun on their roofs, Makar Sankranti festival celebrates the ascent of the sun into the northern hemisphere. Since it is a harvest festival, with sesame being the main harvest of the season; most of our age-old traditional delicacies for Makar Sankranti are prepared using sesame seeds (til) and jaggery. These traditional delicacies are not only meant for pampering our taste buds but also for maintaining good health and keeping away a number of health issues that we are prone to, especially in this season.',
    ),
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/9slhhju8_lohri_120x90_09_January_20.jpg',
      title:
          'Lohri 2020: Date, Significance And Foods To Celebrate The Festival With',
      description:
          'Lohri: Celebrated on the 13th of January every year as per the Gregorian calendar, Lohri is the popular Punjabi festival that welcomes longer sunny days ahead.',
      suite: '',
    ),
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/breg04k_magh-bihu_120x90_08_January_20.jpg',
      title:
          'Happy Magh Bihu 2020: Know More About The Festival of Pitha, Laru And Jolpan',
      description:
          'This year, Magh Bihu will be celebrated on 16th January, 2020. Bihu, Assam\'s pride and brightest festival, identifies the state\'s integrity and infectious energy. The festival is all about bhog or eating.',
      suite: '',
    ),
    Festival(
      image: 'https://i.ndtvimg.com/i/2015-01/pongal_240x180_51422526209.jpg',
      title:
          'Happy Pongal 2020: Puja Time, Significance, Rituals And Foods To Eat',
      description:
          'The festival is one of the most important ones in the Tamil calendar. Pongal is associated with delicious food famous in the Southern Indian states.',
      suite: '',
    ),
  ];
  List<Festival> get festival {
    return [..._festival];
  }
}
