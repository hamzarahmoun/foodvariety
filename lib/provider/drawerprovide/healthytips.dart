import 'package:flutter/cupertino.dart';

class Health with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final String suite;
  Health({this.image, this.title, this.description, this.suite});
}

class HealthFuture with ChangeNotifier {
  List<Health> _health = [
    Health(
      image:
          'https://i.ndtvimg.com/i/2018-01/organic-food-in-india_240x180_71515066858.jpg',
      title:
          'Organic Food Industry: 4 Reasons Why It Will Boom In Coming Years',
      description:
          'Organic food consumption has only increased in turns of demand and supply. One of the main reasons could be the awareness that has been visible by the consumers and how involved people ...',
      suite: '',
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2020-01/5fhg9t3o_superfoods_120x90_20_January_20.jpg',
      title: '5 Expert Recommended Superfoods To Look Out For In The Year 2020',
      description:
          'Most superfoods that will trend in the year 2020 have been around forever. It\'s only that their nutritional value has begun to be appreciated now.',
      suite: '',
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2019-11/1k7650r8_soup_120x90_23_November_19.jpg',
      title:
          'Chef Kunal Kapur Tells Us The Right Way To Include Superfoods In Soups',
      description:
          'Superfoods have gained immense popularity for their high nutrients and fibre count. Combining these superfoods to your soups will not only make your soup healthier but will also help you keep your ...',
      suite: '',
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2019-04/5njd4mh_honey-water_240x180_11_April_19.PNG',
      title:
          'Watch: 6 Immunity Boosting Foods That You\'ll Easily Find At Home',
      description:
          'The best part about these foods is that they are easily available within the premises of your kitchen. So try these immunity boosting foods today!',
      suite: '',
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2019-04/k027p3d_healthy-diet_120x90_09_April_19.jpg',
      title:
          'Winter Diet Tips: How To Build Immunity Naturally - Expert Reveals (Watch)',
      description:
          'Our body performs various kinds of processes and it is important to take care of our body for it to perform properly.',
      suite: '',
    ),
  ];
  List<Health> get health {
    return [..._health];
  }
}
