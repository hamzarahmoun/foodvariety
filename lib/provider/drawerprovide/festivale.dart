import 'package:flutter/cupertino.dart';

class Festival with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final List<String> suite;

  Festival({this.image, this.title, this.description, this.suite});
}

class FestivalFuture with ChangeNotifier {
  List<Festival> _festival = [
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/1u4nutok_240x180_120x90_13_January_20.jpg',
      title:
          'Makar Sankranti 2020:the First Festivals that take place as a new year starts ',
      description:
          'On this festive celebration, we bring to you a healthy alternative to all your favourite Makar Sankranti dishes.',
      suite: [
        'With a myriad of colourful kites flying in the sky and people enjoying the soothing winter sun on their roofs, Makar Sankranti festival celebrates the ascent of the sun into the northern hemisphere. ',
        'Since it is a harvest festival, with sesame being the main harvest of the season; most of our age-old traditional delicacies for Makar Sankranti are prepared using sesame seeds (til) and jaggery.',
        ' These traditional delicacies are not only meant for pampering our taste buds but also for maintaining good health and keeping away a number of health issues that we are prone to, especially in this season.',
      ],
    ),
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/9slhhju8_lohri_120x90_09_January_20.jpg',
      title: 'Lohri 2020: Date, Significance  To Celebrate The Festival With',
      description:
          'Lohri: Celebrated on the 13th of January every year as per the Gregorian calendar, Lohri is the popular Punjabi'
          ' festival that welcomes longer sunny days ahead.',
      suite: [
        'Lohri 2020: Significane Of Lohri',
        '',
        'As the festival paves way for longer day light, people believe in the coming of a new wave of prosperity. They worship the Sun God, Surya, and seek blessings for their bright future.Lohri also commemorates the new financial year for farmers with the advent of agriculture-related rent collection.',
        '',
        'Lohri 2020: Celebratory Rituals Of Lohri',
        '',
        'During the day, children go from door to door asking for traditional sweets like gajak, chikki, jaggery, popcorn, sesame seeds (til), rewari and peanuts, which they call their \'lohri\'.',
        ' In the evening, people in the neighbourhood get together and light the holy bonfire. They sit around the bonfire singing folk songs and tossing the collected lohri into the fire to pay homage to the fire God, Agni.'
      ],
    ),
    Festival(
      image:
          'https://c.ndtvimg.com/2020-01/breg04k_magh-bihu_120x90_08_January_20.jpg',
      title:
          'Happy Magh Bihu 2020: Know More About The Festival of Pitha, Laru And Jolpan',
      description:
          'This year, Magh Bihu will be celebrated on 16th January, 2020. Bihu, Assam\'s pride and brightest festival, identifies the state\'s integrity and infectious energy. The festival is all about bhog or eating.',
      suite: [
        'Bihu 2020: It is that time of the year when the whole nation gets decked up for fun, frolics, food and festivities. ',
        'In not even a week and we are all set to celebrate the harvest festival that has various names in various parts of the country, and in Assam, they call it Magh Bihu or Bhogali Bihu or Maghar Domahi. Bihu, Assam\'s pride and brightest festival, identifies the state\'s integrity and infectious energy.',
        ' The word \'Bihu\' is believed to have originated from the word \'Bishu\' that means \'to ask for peace\'. Magh Bihu is the celebration of harvest in Assam, which is concluded with lighting a bonfire (Meji) and praying the God of fire.',
      ],
    ),
    Festival(
      image: 'https://i.ndtvimg.com/i/2015-01/pongal_240x180_51422526209.jpg',
      title: 'Happy Pongal 2020: Puja Time, Significance, Rituals ..',
      description:
          'The festival is one of the most important ones in the Tamil calendar. Pongal is associated with delicious food famous in the Southern Indian states.',
      suite: [
        "Pongal 2020 is a festival that marks the end of the winters and the beginning of the harvest season.",
        " Pongal is also associated with delicious food, and recipes that are famous in the Southern Indian states like Tamil Nadu, Telangana and Andhra Pradesh, as well as in countries with Tamil diaspora including Sri Lanka, Mauritius, South Africa, Singapore, Malaysia, etc. ",
        "The festival is one of the most important ones in the Tamil calendar and has been celebrated for over a thousand years. As celebrations for the four-day festival swing into motion, here is a lowdown of the date, time, significance, rituals and food of the festival.",
        "",
        "Significance of Pongal:",
        "",
        "Pongal is meant to be a tribute to the God Sun for the bountiful harvest of crops. The festival denotes the upward voyage of the sun into the Northern hemisphere. The word 'Pongal' itself is associated with the practice of boiling rice, as 'Pong' in Tamil means 'to boil' or 'to spill over'."
      ],
    ),
  ];
  List<Festival> get festival {
    return [..._festival];
  }
}
