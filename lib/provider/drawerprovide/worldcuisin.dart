import 'package:flutter/cupertino.dart';

class WorldFood with ChangeNotifier {
  final String image;
  final String title;
  final String description;
  final List<String> suite;

  WorldFood({this.image, this.title, this.description, this.suite});
}

class WorldFoodFuture with ChangeNotifier {
  List<WorldFood> _worldFood = [
    WorldFood(
      image:
          'https://c.ndtvimg.com/2020-02/liucso9_sabudana_120x90_13_February_20.jpg',
      title:
          'Indian Cooking Tips: Move Over Sabudana Vada And Khichdi; Try Sabudana Paratha Instead ',
      description:
          'Tapioca or sabudana is a non-cereal food source and consists of starchy carbohydrate; hence it is consumed widely during any Hindu fasting ritual. However, sabudana dishes are enjoyed year-round.',
      suite: [
        "Sabudana, the translucent pearl-like globules, is an important part of an Indian kitchen. Extracted from the roots of tapioca, it is a common ingredient for food items during any vrat, puja or any Hindu religious occasion. ",
        "Although it is an integral part of Indian food culture, according to food historian K.T Achaya, it is stated that tapioca came into India around 1800 AD and has several point of entry. 'An early ingress may have been to Malabar from Africa, to which it had been transported from Brazil with the slave trade, and a later one from the Philippines to Assam and Bengal,' he stated in his book 'A Historical Dictionary of Indian Food'"
      ],
    ),
    WorldFood(
      image:
          'https://c.ndtvimg.com/2020-02/ku3mf3mg_aloevera-_120x90_13_February_20.jpg',
      title:
          'This Aloe-Vera Sharbat Is A Popular Bangladeshi Drink, Why You Should Try It Too!',
      description:
          'Aloe vera is generally consumed in form of juice. Regular consumption helps in fighting cholesterol, which promotes heart health.',
      suite: [
        "Aloe vera is all about goodness. From health to skin to hair - aloe vera gel has is a powerhouse of benefits. ",
        "Also known as ghritkumari in Hindi, aloe vera can easily be grown in homes and has widespread acceptance world-wide. It works wonders for weight loss as the nutrient content in it detoxes the body, boosts metabolism, aids digestion and more. ",
        "It contains a complex carb, termed as acemannan, and facilitates the absorption of nutrients by the cells, leading to detoxification. The presence of vitamin B helps in metabolism, which helps in burning fat."
      ],
    ),
    WorldFood(
      image:
          'https://c.ndtvimg.com/2020-02/15ftejko_chutney_120x90_06_February_20.jpg',
      title:
          'Indian Cooking Tips: Give The Boring Raw Papaya A ‘Plastic’ Chutney Twist',
      description:
          'Raw papaya has anti-bacterial properties and contains the highest concentration of papain. This promotes better digestion.',
      suite: [
        "If you ever go to any traditional Bengali food fest or restaurant or to any occasion like marriage parties, one dish you surely will find in the menu is 'plastic chutney'. You might be thinking, who eats plastic! Don't worry, it is nothing but raw papaya chutney. The next obvious question comes, why plastic then?",
        " Although the history behind the name is unknown, but it is perceived that may be because of its glass-like translucent texture, this chutney is called plastic chutney. Yes, that is how it looks after cooking in sugar syrup. Chutneys work as palate cleanser, so in a full-course Bengali meal, they are served after a heavy main course and before the dessert, which obviously are sondesh, doi and rasogolla."
      ],
    ),
    WorldFood(
      image:
          'https://c.ndtvimg.com/2019-03/8v9klc1g_kheer_240x180_04_March_19.jpg',
      title:
          'Move Over, Chawal Ki Kheer! Try This Delicious Mooli Ki Kheer At Home ',
      description:
          'Radish has several health benefits. It helps to cleanse our liver and stomach.',
      suite: [
        "What is the most common dessert of India? It's kheer! It is also called payasam/payasa in the southern part of India, payesh in Bengal and payok in Assam.",
        " Loaded with sweetness and enriched with the goodness of milk, fruits and nuts, this Indian dessert is a treat to every taste bud and an indispensable part of any celebration or festivity. ",
        "Kheer is mostly made out of rice and vermicelli (Sewaiyan). But today, people experiment a lot with kheer and one of such is radish kheer (mooli ka kheer). Here, with the richness of kheer, one also gets the benefits of mooli (radish)."
      ],
    ),
    WorldFood(
      image:
          'https://i.ndtvimg.com/i/2018-04/golden-temple_240x180_81524587256.jpg',
      title:
          'Beyond Amritsar\'s Popular Eateries: 3 Culinary Experiences That Take You Off The Beaten Track',
      description:
          'Amritsar is a ride of its own, the flavours, the places, the experience. Here\'s a few things you should know about Amritsar\'s culinary background.',
      suite: [
        "Kulchas at Maqbool road",
        "",
        "There's no city that does the Kulcha better. Kulcha Land on Ranjit Road is particularly popular with tourists and also patronised by locals. But my favourite spot is a nondescript eatery. It was Celebrity Chef and restaurateur Vikas Khanna who uncovered this eatery at Maqbool road that doesn't even have a signage, during a visit a few years ago. Maqbool Road Kulchawala hasn't dropped the ball since then. This kulcha with its flaky almost crispy crust and the soft inside with a potato filling is scrumptious. ",
        "",
        "The colours and flavours of Rambagh Market",
        "",
        "In October 2018, the Rambagh gate, one of Amritsar's iconic landmarks was restored to its former glory. The vibrant Rambagh market, a multi-sensory experience is next to this restored structure. I'd recommend walking through this market just after breakfast when you can check out fresh produce. The vibrant colours at the pickle shops - you'll find dozens of varieties here, and the spice shops will guarantee Instagram love. Try out some of these piquant pickles or Amritsar's famous masala gud - desi gud (jaggery) spiked with spices like saunf. ",
        "",
        "The charms of Charming Chicken",
        "",
        "There's an infectious appeal about restaurants that are driven by proud owners who refuse to take a step back or yield to temptation and slip into franchise mode. Amarjeet Singh Basher is one such business owner. Charming Chicken is probably the 'go-to' spot for butter chicken among local foodies and is just across the road for Makhan (well-known its signature fish tikka) and Beera Chicken, two iconic establishments. The butter chicken here is a welcome departure from the mildly sweet versions that are more commonplace, while the unique layered (lachha style) garlic naan is the other must-try dish",
      ],
    ),
  ];
  List<WorldFood> get worldFood {
    return [..._worldFood];
  }
}
