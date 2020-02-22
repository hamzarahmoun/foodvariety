import 'package:flutter/cupertino.dart';

class Yoga with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final List<String> suite;

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
      suite: [
        "What To Eat Before Yoga Session",
        "",
        "Those who are looking to practice yoga in the morning, it is better to eat bananas and other fruits like berries, at least 45 minutes prior to your session. Start your day with protein-rich foods like yogurt and dried fruits, oatmeal, fruit smoothies, eggs, homemade protein bars and protein shakes to kick-start your morning filled with energy.For those looking at practising yoga in the evening can have light snacks an hour before beginning to exercise. You can add a bowlful of steamed vegetables, salads, or even nuts and seeds in your diet to ensure you are energised well enough to exercise.",
        "",
        "What To Eat After Yoga Session",
        "",
        "You should drink water 30 minutes after you have exercised. The idea is to regain the electrolytes that you may have lost during yoga, which can cause cramps in the body. Eat a super nutritious meal after your yoga session. Indulge in a bowlful of fresh seasonal fruits or vegetable salads. You can also have hard-boiled eggs, a light sandwich, yogurt with nuts and seeds and cereals.",
      ],
    ),
    Yoga(
      image:
          'https://c.ndtvimg.com/2019-06/4lfg73ag_yoga_120x90_19_June_19.jpg',
      title:
          'Yoga Day 2019: 5 Expert Suggested Diet And Lifestyle Habits For Holistic Well Being',
      description:
          'International Yoga Day: One needs to work towards being truly healthy in every aspect of life, be it physical or emotional.',
      suite: [
        "Here are some simple ways to balance your mind, body, and soul in order to achieve overall wellness in life:",
        "",
        "Include The New Healthy Brew Of 2019 - 'Green Coffee'",
        "Add More Superfoods To Your Diet",
        "Take Up A Physical Activity",
        "Practice Meditation",
        "Always Pursue Your Hobbies",
      ],
    ),
    Yoga(
      image: 'https://i.ndtvimg.com/i/2018-01/yoga_240x180_51517210465.jpg',
      title: '5 Quick Yoga Ways to De-Stress in Traffic',
      description:
          'Morning traffic snarls, rush hour and the pollution can weigh the best of us down, even before reaching the work place. These on-the-go yoga tips can remedy the stress!',
      suite: [
        "Head Massage",
        "",
        "Blink, Squeeze, Eyes Open Wide",
        "",
        "Jaw Release",
        "",
        "Neck Rolls",
        "",
        "Ear to Shoulder Stretch",
        "",
        "Quick Body Shake",
        "",
        "Simple Seated Twist"
      ],
    ),
    Yoga(
      image:
          'https://i.ndtvimg.com/i/2017-09/pranayam-240_240x180_81505909403.jpg',
      title:
          'How to do Pranayam: Yoga Breathing Exercises You Must Include in Your Routine',
      description:
          'Respiration is closely tied to the heart and the quality of your heart health directly affects the span of your life.',
      suite: [
        "Those who follow yoga may have heard of the practice of pranayam. The word is derived from 'Prana' which stands for 'life force' and 'Ayama' which means 'to lengthen or to work on it'. Prana, in yogic terms, means the force within the body that is vital for the functioning of the body as well as its vitality. Yogic texts describe Prana as a potent force that runs through various chakras and nadis in the body to keep the body healthy, energized and invigorated. Breathing plays an extremely crucial role in the regulation and maintenance of Prana.",
        "It is believed that when the Prana is not able to move freely in the body - due to blockages in chakras or nadis - a person begins to harbour sickness. The concept of prana and its effect on a person's well-being has more to do with the mental state, mindfulness and the emotional health of a person. Interestingly, just the way we breathe may affect the way we perceive things as well as our mental health. Therefore, pranayama is a simple practice of many breathing techniques and asanas that promote emotional, mental and physical well-being.",
      ],
    ),
  ];
  List<Yoga> get yoga {
    return [..._yoga];
  }
}
