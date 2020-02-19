import 'package:flutter/cupertino.dart';

class Yoga with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String suite;

  Yoga({this.image, this.title, this.description, this.suite});
}

class YogaFuture with ChangeNotifier {
  List<Yoga> _yoga = [
    Yoga(
      image: 'https://i.ndtvimg.com/i/2018-01/yoga_240x180_41516191525.jpg',
      title:
          'International Yoga Day: Foods To Eat Before And After Your Yoga Session This Yoga Day',
      description:
          'We celebrate International Yoga Day, commonly known as Yoga Day, on 21 June every year, since its inception in the year 2015',
      suite: '',
    ),
    Yoga(
      image:
          'https://c.ndtvimg.com/2019-06/4lfg73ag_yoga_120x90_19_June_19.jpg',
      title:
          'Yoga Day 2019: 5 Expert Suggested Diet And Lifestyle Habits For Holistic Well Being',
      description:
          'International Yoga Day: One needs to work towards being truly healthy in every aspect of life, be it physical or emotional.',
      suite: '',
    ),
    Yoga(
      image: 'https://i.ndtvimg.com/i/2018-01/yoga_240x180_51517210465.jpg',
      title: '5 Quick Yoga Ways to De-Stress in Traffic',
      description:
          'Morning traffic snarls, rush hour and the pollution can weigh the best of us down, even before reaching the work place. These on-the-go yoga tips can remedy the stress!',
      suite: '',
    ),
    Yoga(
      image:
          'https://i.ndtvimg.com/i/2017-09/pranayam-240_240x180_81505909403.jpg',
      title:
          'How to do Pranayam: Yoga Breathing Exercises You Must Include in Your Routine',
      description:
          'Respiration is closely tied to the heart and the quality of your heart health directly affects the span of your life.',
      suite: '',
    ),
    Yoga(
      image:
          'https://i.ndtvimg.com/i/2017-09/yoga-new-240_240x180_61504614191.jpg',
      title:
          'Vinyasa Yoga: All About the \'Flow Yoga\' and Why You Must Give it a Try',
      description:
          'Yoga is something that can easily be included in your daily routine. All it takes is a yoga mat and some dedication and persistence.',
      suite: '',
    ),
  ];
  List<Yoga> get yoga {
    return [..._yoga];
  }
}
