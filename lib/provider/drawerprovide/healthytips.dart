import 'package:flutter/cupertino.dart';

class Health with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final List<String> suite;
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
      suite: [
        "1. Digital Literacy and E-commerce facilitation",
        "Due to the surge of smart-phone usage India, coupled with low-cost internet, there has been an increase in access to information about organic food. Added with this, e-commerce platforms acted like a facilitator reaching out to potential customers across the country.",
        "2. Insignificant price difference",
        "The price difference between organic and inorganic food is insignificant; when compared to the health benefits carried by organic food. While organic food might be priced higher by a few pennies, it prevents the body from the needless intake of pesticides and fertilizers",
        "3. Indian government supporting organic food industry",
        "The Indian government is supporting and promoting organic farming by extending financial help to farmers adopting organic farming.",
        "4. Increase in export",
        "The demand for Indian organic food has not only witnessed a steady rise in India but it is receiving appreciation on a global platform. Due to India's favourable agro climatic conditions coupled with the inherited tradition of organic farming, the quality of organic food to export is very high",
      ],
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2020-01/5fhg9t3o_superfoods_120x90_20_January_20.jpg',
      title: '5 Expert Recommended Superfoods To Look Out For In The Year 2020',
      description:
          'Most superfoods that will trend in the year 2020 have been around forever. It\'s only that their nutritional value has begun to be appreciated now.',
      suite: [
        "Here Are 5 Superfoods That Experts Recommend For The Year 2020:",
        "",
        "1. Leafy Greens",
        "2. Local Fruits",
        "3. Whole Grains",
        "4. Seeds",
        "5. Spices",
      ],
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2019-11/1k7650r8_soup_120x90_23_November_19.jpg',
      title:
          'Chef Kunal Kapur Tells Us The Right Way To Include Superfoods In Soups',
      description:
          'Superfoods have gained immense popularity for their high nutrients and fibre count. Combining these superfoods to your soups will not only make your soup healthier but will also help you keep your ...',
      suite: [
        "As we are in the midst of the winters, we all have a tendency to put on some weight given our body tends to ask for more food. But after the winters are gone, the biggest challenge comes in losing all that extra weight. Winters are also a time where our activities are minimal. Less of outdoors and more of sitting indoors inside the warm quilt has long term negative health effects. ",
        "Hence, one of the best ways to beat the winter blues is going 'Soup-a-holic' to keep you warm and agile. Soup-a-holic or simply having soup meals is an excellent way to nourish your body. Not only is it easy to make but also there are many healthy fruits and vegetables available making soups a go-to option for those looking for something healthy and tempting. And what's more? Soups have lower calorie content and make a nutritious and filling meal. They are best because of their stimulating qualities and they also help restore the necessary water balance, keeping our blood pressure and salts balanced",
      ],
    ),
    Health(
      image:
          'https://c.ndtvimg.com/2019-04/5njd4mh_honey-water_240x180_11_April_19.PNG',
      title:
          'Watch: 6 Immunity Boosting Foods That You\'ll Easily Find At Home',
      description:
          'The best part about these foods is that they are easily available within the premises of your kitchen. So try these immunity boosting foods today!',
      suite: [
        "Here Are Six Immunity-Boosting Foods You'll Find Easily At Home:",
        "1. Black Pepper",
        "2. Garlic",
        "3. Ginger",
        "4. Lemon",
        "5. Turmeric",
        "6. Honey",
      ],
    ),
  ];
  List<Health> get health {
    return [..._health];
  }
}
