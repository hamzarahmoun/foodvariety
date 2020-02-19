import 'package:flutter/material.dart';

class ThailandFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double codeFood;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;

  ThailandFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    @required this.codeFood,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.information,
  });
}

class Thailand with ChangeNotifier {
  List<ThailandFood> _thailandRecipes = [
    ThailandFood(
        id: 'r1',
        title: 'Guay Teow ',
        country: 'Thailand',
        imageUrl:
            'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/2320556250_bcc7b86e4f_o.jpg',
        codeFood: 5,
        information:
            'Guay teow is arguably one of the most popular Thai dishes and can be found almost everywhere. Guay teow describes any type of noodle soup. It can be made with chicken, pork, or beef (rarely vegetarian-friendly) as well as either rice noodles or egg noodles. Most of the time, vendors also add wontons or meatballs to the broth. The dish is best topped with a selection of condiments including, sugar, dried chilli peppers, lime juice, and fish sauce. Guay teow can be eaten at any time of day and is particularly good as a late night snack.',
        duration: ' 45 min',
        ingredients: [
          '1 bag rice noodles                              ',
          '11 oz. pork meatballs (or meat of your choice)  ',
          '1 bag bean sprouts                              ',
          '4 cloves garlic                                 ',
          '1/2 tbsp. coriander seeds                       ',
          '1/2 tsp white pepper                            ',
          '1 tsp sugar                                     ',
          '3 tbsp. pork seasoning                          ',
          '6 cups of water                                 ',
          'fried garlic                                    ',
          'cilantro                                        ',
          'red pepper flakes                               ',
          'white vinegar                                   ',
          'green hot chili peppers                         ',
        ],
        steps: [
          'Bring a large pot of water to a boil, turn off when boiling then add the rice noodles and cook for about 3 to 4 minutes. ',
          'Strain the noodles and rinse with cold water to stop the cooking process, then set aside. ',
          'Chop the cilantro, smash the garlic, crush the coriander seeds, and cook the meat if not already precooked.                                                                                                        ',
          'Add the 6 cups of water to a medium large pot and turn on high, add the smashed garlic, crushed coriander, white pepper, sugar, and the pork seasoning.',
          ' Bring to a boil and boil on high for about 7 minutes.      ',
          'Strain the broth and toss the smashed garlic and coriander seed remains, then add the meatballs to the strained broth. ',
          'Cook an additional 3 minutes until the meatballs are hot.                                   ',
          'Serve over rice noodles and top with desired amount of red pepper flakes, sugar, vinegar mixture, cilantro, bean sprouts, and fried garlic. ENJOY!!                                                                ',
        ]),
    ThailandFood(
        id: 'r1',
        title: 'Spicy Green Papaya Salad',
        country: 'Thailand',
        imageUrl:
            'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/7794345124_f48e5b469c_k.jpg',
        codeFood: 4,
        information:
            'Som tam hails from Isaan in Northeastern Thailand and is one of the most popular dishes in Thailand. Som tam comes in a variety of styles, however, the classic som tam consists of shredded green papaya, tomatoes, carrots, peanuts, dried shrimp, runner beans, palm sugar, tamarind pulp, fish sauce, lime juice, garlic and plenty of chillies. The ingredients are mixed together using a mortar and pestle, which amplifies the flavours into a super moreish dish.',
        duration: '45 min',
        ingredients: [
          '2 tablespoons tom yum paste                         ',
          '2 tablespoons canola oil or peanut oil              ',
          '2 tablespoons grated palm sugar or brown sugar      ',
          'Juice of 1 lime, plus extra lime wedges, to serve   ',
          '600g green prawns, peeled (tails intact), deveined  ',
          'HERB & PAPAYA SALAD                                 ',
          '2 tablespoons fish sauce                            ',
          '2 tablespoons lime juice                            ',
          '1 tablespoon grated palm sugar or brown sugar       ',
          '1 long red chilli, seeds removed, finely chopped    ',
          '1 small (about 600g) green papaya                   ',
          '1 Lebanese cucumber                                 ',
          '250g punnet cherry tomatoes, quartered              ',
          '4 spring onions, finely shredded                    ',
          '1/2 cup fresh mint leaves                           ',
          '1/2 cup fresh coriander                             ',
          '1/2 cup Thai basil leaves                           ',
          '1/4 cup (35g) roasted peanuts, roughly chopped      ',
        ],
        steps: [
          'Combine tom yum paste, oil, sugar and lime juice in a bowl.',
          ' Add prawns and turn to coat. ',
          'Cover and marinate in the fridge for 30 minutes.',
          'Meanwhile, for the salad, combine fish sauce, lime juice, sugar and chilli in a screwtop jar',
          '. Shake well, then set aside.',
          'Peel papaya and halve, discarding seeds, then finely shred or grate and place in a bowl. ',
          'Halve cucumber lengthways, remove seeds, then thinly slice on the diagonal. ',
          'Add to bowl with tomato, spring onion and herbs, and toss to combine.',
          'Lightly grease a barbecue or chargrill pan and preheat to medium-high.',
          ' Cook prawns for 2 minutes each side or until lightly charred and just cooked.',
          ' Add to salad with the dressing and toss to combine.',
          ' Top with peanuts and serve with extra lime wedges. ',
        ]),
    ThailandFood(
        id: 'r1',
        title: 'Laab (Spicy Salad)',
        country: 'Thailand',
        imageUrl:
            'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/14791401790_75318902ed_k.jpg',
        codeFood: 3,
        information:
            'Laab is a northeastern-style salad with meat or mushroom and mint which originates in the northeastern province of Isan. Laab comes in a variety of styles including chicken, pork, and mushroom. It is not recommended for those who can’t handle spice as it tends to come with a hefty kick.',
        duration: '30 min',
        ingredients: [
          '1 1/2 tablespoons jasmine rice                          ',
          '2 tablespoons peanut oil                                ',
          '500g lean pork or chicken mince                         ',
          '1 stem lemon grass, pale section only, finely chopped   ',
          '2 fresh long green chillies, finely chopped             ',
          '1 teaspoon finely grated lemon rind                     ',
          '2 tablespoons fresh lemon juice                         ',
          '1 tablespoon fish sauce                                 ',
          'Pinch of caster sugar                                   ',
          '1/3 cup loosely packed fresh coriander leaves           ',
          '1/2 small red onion, thinly sliced                      ',
          'Butter lettuce leaves, to serve                         ',
          '40g (1/4 cup) finely chopped unsalted roasted peanuts   ',
        ],
        steps: [
          'Heat a wok or a large heavy-based frying pan over medium-high heat. Add rice and cook, stirring, for 2 minutes or until golden brown. ',
          'Remove from heat.',
          ' Transfer to the bowl of a food processor and process until finely ground.',
          'Heat oil in the wok or frying pan over high heat.',
          ' Add the mince, lemon grass and chilli and cook, breaking up the mince with a wooden spoon, for 5 minutes or until the mince changes colour.',
          ' Transfer to a heatproof bowl and set aside for 15 minutes to cool.',
          'Combine the lemon rind, lemon juice, fish sauce and sugar in a small bowl.',
          ' Add to the mince mixture along with the ground rice, coriander leaves and onion. Gently toss to combine.',
          'Spoon among lettuce leaves. Sprinkle with peanuts and serve immediately.',
        ]),
    ThailandFood(
        id: 'r1',
        title: 'Pad See Eiw ',
        country: 'Thailand',
        imageUrl:
            'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/23521253658_4e28675409_k.jpg',
        codeFood: 5,
        information:
            'This dish consists of wide rice noodles which are stir-fried in thick dark soy sauce with chicken, pork, or beef as well as either Chinese broccoli or cabbage. A flavorful but safe choice, it’s an excellent option for those who can’t handle spicier Thai dishes but want to branch out from pad thai. Foodies who like a little more kick can add dried chilli flakes, vinegar, or both.',
        duration: '25 min',
        ingredients: [
          '1 C. vegetable oil ',
          '34 cloves of garlic coarsely crushed in a mortar or with the dish of a knife and then chopped ',
          '1 chicken breast of 200 g cut into thin strips',
          '1/2 tsp clear Thai soy sauce (white cap)',
          '200 g 10-15 mm rice noodles',
          '3 c. clear Thai soy sauce (white cap) ',
          '1 1/2 tsp. dark Thai soy sauce (brown cap) ',
          '20 ground pepper seeds',
          '2 c. at the oil table ',
          '1 egg                                                                                                ',
          '4 Chinese broccoli, stems and leaves',
        ],
        steps: [
          'Put the noodles in a bowl with lukewarm water for about 20 min. Drain them just before preparing the stir-fry. ',
          'Mix the two soy sauces and half of the ground white pepper in a bowl.',
          ' Cut the stems of the broccoli in two or four depending on the thickness and the leaves and large pieces. ',
          'Put the oil in a wok and when it is hot add the garlic and cook for about 30 seconds until the flavors develop and it takes on a nice dark yellow color but without the garlic browning. ',
          'Add a little oil then add the egg and break the yolk immediately. ',
          'Let it cook for 15-20 s without touching it, then turn it and cut it roughly with a spatula. ',
          'Add the noodles and pour the dark and light soy mixture on top.',
          ' Spread the noodles well and cook over high heat for about 2-3 minutes, keeping them well spread. ',
          'When the noodles are cooked, add the broccoli leaves and the cooked chicken and continue mixing for 20-30 s.',
          'Serve the noodles on a plate with chili powder and a pinch of white pepper.',
        ]),
    ThailandFood(
        id: 'r1',
        title: 'Pad Krapow (Fried Basil)',
        country: 'Thailand',
        imageUrl:
            'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/5329148305_ed69be0268_o.jpg',
        codeFood: 4,
        information:
            'Pad krapao usually is made using minced pork or chicken (it’s also great with tofu) which is stir-fried with Thai basil and plenty of chillies. Pad krapow is definitely not a dish for picky eaters: The Thai basil has a very sharp, peppery flavour, while the chillies add a hefty dose of spice. You can always take the heat down a notch by asking the vendor to make it “pet nit noi” (only a little spicy). The dish served with white rice and topped with an oozing running friend egg “kai dao” which blends through the rest of the dish for an unforgettable taste sensation.',
        duration: '20 min',
        ingredients: [
          '3 to 4 tablespoons oil                                                            ',
          '3 Thai bird chilies or holland chilies (de-seeded if desired and thinly sliced)   ',
          '3 shallots (thinly sliced)                                                        ',
          '5 cloves garlic (sliced)                                                          ',
          '1 pound ground chicken (450g)                                                     ',
          '2 teaspoons sugar (or honey)                                                      ',
          '2 tablespoons soy sauce                                                           ',
          '1 tablespoon fish sauce                                                           ',
          '1/3 cup low sodium chicken broth (or water)                                       ',
          '1 bunch holy or Thai basil leaves                                                 ',
        ],
        steps: [
          'In a wok over high heat, add the oil, chilies, shallots and garlic, and fry for 1-2 minutes.',
          ' Add the ground chicken and stir-fry for 2 minutes, breaking up the chicken into small bits. ',
          'Add the sugar, soy sauce, and fish sauce. Stir-fry for another minute and deglaze the pan with the broth.',
          ' Because your pan is over high heat, the liquid should cook off very quickly.   ',
          'Add the basil, and stir-fry until wilted. ',
          'Serve over rice.                                                                                                                               ',
        ]),
    ThailandFood(
        id: 'r1',
        title: 'Kai Jeow',
        country: 'Thailand',
        imageUrl:
            'https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco,c_fit,w_760/https%3A%2F%2Fstorage.googleapis.com%2Fgen-atmedia%2F3%2F2011%2F04%2F6da3f80833858ee3ce346b36fee92f01ef84465b.jpeg',
        codeFood: 3,
        information:
            'These cookies have a history rooted in WWI. They were once made by the wives of the Australian and New Zealand Army Corps (ANZAC) and delivered to their men at war.'
            'Now these cookies are made in commemoration of ANZAC Day, April 25th, honoring those who gave their lives to the war.'
            '  The delicious cookies are essentially oatmeal cookies made with golden syrup and desiccated coconut.',
        duration: '15 min',
        ingredients: [
          '2 eggs                                          ',
          '2 tablespoons minced pork (or minced chicken)   ',
          '3/4 teaspoon soy sauce                          ',
          'About 1/2 cup of oil for frying                 ',
          'Tomato sauce (optional)                         ',
          'Fresh steamed rice                              ',
        ],
        steps: [
          'The first thing I like to do is put my small sauce pan (about 6 inches in diameter) on the stove, turn it to a medium high heat, and add about ½ cup of vegetable frying oil to it. ',
          'Then while your oil is heating up, you can quickly prepare you eggs, which will only take about 1 minute.  ',
          'Take your 2 eggs and crack them into a mixing bowl.                                                                                                                                                                                                                                            ',
          'Add about 2 tablespoons (I just guesstimated 1 heaping tablespoon) of minced pork or minced chicken to the egg.                                                                                                                                                                                ',
          'Add 3/4 of a teaspoon of light soy sauce to your egg and pork.                                                                                                                                                                                                                                 ',
          'Break the yolks and start to really whisk and beat up the egg, using deep circular motions.',
          ' The aim is to get your egg really beat up and start to see some bubbles - that way when you fry it, it puffs up and is nice and fluffy.                                                            ',
          'When your oil has heated, walk over to your pan, while still beating your egg up until the last moment, and pour in your egg mixture directly into the center of the oil.',
          ' If your oil is at the perfect temperature, it should bubble up all puffy.                                            ',
          'It should take about only about 30 seconds or so, depending on how hot your oil is (and you can be checking on it with your spatula), before it’s time to flip over your Thai omelet.                                                                                                          ',
          'After you flip over your omelet, cook it again for about 30 seconds or so, pressing it down with your spatula to confirm that it’s cooked all the way through.                                                                                                                                 ',
          'When the omelet is golden yellow on both sides, and there’s no runny egg in the middle, it’s ready. ',
          'First drain all that excess oil off the egg.                                                                                                                                               ',
          'Hopefully you have some fresh hot rice already cooked. ',
          'Get a plate of rice, and gently lay your beautiful Thai omelet over the rice in a blanket of comfort food.                                                                                                                              ',
        ]),
    ThailandFood(
        id: 'r1',
        title: 'Phat thai',
        country: 'Thailand',
        imageUrl:
            'https://i.pinimg.com/originals/8f/96/f0/8f96f0f4214350358dd0b80e84c79fb6.jpg',
        codeFood: 5,
        information:
            'These cookies have a history rooted in WWI. They were once made by the wives of the Australian and New Zealand Army Corps (ANZAC) and delivered to their men at war.'
            'Now these cookies are made in commemoration of ANZAC Day, April 25th, honoring those who gave their lives to the war.'
            '  The delicious cookies are essentially oatmeal cookies made with golden syrup and desiccated coconut.',
        duration: '45 min',
        ingredients: [
          '120g 2-3mm wide flat rice sticks                                                    ',
          '60ml fish sauce                                                                     ',
          '60ml tamarind water (you can use tamarind concentrate, thinned with a little water) ',
          '60g palm sugar                                                                      ',
          'Pinch of chilli powder, to taste                                                    ',
          '80ml groundnut or vegetable oil                                                     ',
          '2 cloves of garlic, finely chopped                                                  ',
          '100g extra-firm tofu, chopped into small cubes                                      ',
          '8 large prawns                                                                      ',
          '2 large eggs, ready cracked                                                         ',
          '25g preserved salted radish, chopped                                                ',
          '1 tbsp small dried shrimp                                                           ',
          '100g beansprouts                                                                    ',
          '4 stalks Chinese chives, chopped                                                    ',
          '50g roasted peanuts, roughly chopped                                                ',
          'Lime wedges, chilli flakes, fish sauce and sugar, to garnish                        ',
        ],
        steps: [
          'Soak the rice sticks in cold water for about half an hour until pliable but al dente. Drain.                                                                                                                                                                                                                                                                             ',
          'Meanwhile, make the sauce by combining the fish sauce, tamarind and palm sugar in a small pan. ',
          'Heat gently to dissolve the sugar and taste - add more of any of the ingredients as you wish. ',
          'Season with chilli to taste. Set aside.                                                                                                                                 ',
          'Lay out all the ingredients within easy reach of the hob in the order they\'ll be used. ',
          'Put a wok on a high heat and add half the oil. ',
          'Add the garlic, stir fry for a few seconds, then add the noodles and a splash of water. ',
          'Stir fry until they\'re drying out, then add the sauce. ',
          'Fry until they are almost soft enough to eat (they should be slightly chewy).       ',
          'Push the noodles to the side of the wok and add the rest of the oil.',
          ' Fry the tofu and prawns until the tofu is beginning to colour, then push to the side and add the eggs. ',
          'Pierce the yolks and, when starting to set on the bottom, scramble.                                                                                                                          ',
          'Stir through the noodles, and add the radish, dried shrimp, beansprouts, chives and peanuts.',
          ' Stir fry until well combined, then serve with the garnishes for people to add as they wish.                                                                                                                                                                                 ',
        ]),
  ];

  List<ThailandFood> get thailandRecipes {
    return [..._thailandRecipes];
  }
}
