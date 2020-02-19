import 'package:flutter/material.dart';

class AustraliaFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double rating;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;
  bool isFavorite;
  AustraliaFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    @required this.rating,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.information,
    this.isFavorite = false,
  });
}

class Australia with ChangeNotifier {
  List<AustraliaFood> _australiaRecipes = [
    AustraliaFood(
      id: 'r1',
      title: 'Pavlova ',
      country: 'Australia ',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/pavlova_pixabay-768x523.jpg',
      rating: 3,
      information:
          'The Aussies and the Kiwis have forever fought for the title as the “inventor’ of the Pavlova – '
          'a meringue cake base topped with whipped cream and fruit. Regardless of its origin, '
          'the pavlova is absolutely delicious! You are most likely able to find a Pavlova in a Cake Shop or Bakery.'
          ' You can also buy them pre made from most major supermarket chains (look in the bread or frozen dessert section).',
      duration: '1 h 30 min',
      ingredients: [
        'FOR THE CAKE:',
        '1 cup (230g) unsalted butter, softened to room temperature',
        '1 cup (180g) granulated sugar',
        '1/4 cup (50g) light brown sugar',
        '4 large eggs',
        '1 Tablespoon vanilla extract',
        '3 cups (345g) sifted all-purpose flour',
        '1 Tablespoon baking powder',
        '1/2 teaspoon salt',
        '1 cup (240ml) buttermilk*',
        '3 medium lemons, juice and zests',
        'FOR THE CREAM CHEESE FROSTING:',
        '8 ounces (224g) full-fat brick style cream cheese, softened to room temperature',
        '1/2 cup (115g) unsalted butter, softened to room temperature',
        '3 cups (350g) confectioners’ sugar',
        '1 – 2 Tablespoons heavy cream',
        '1 teaspoon vanilla extract',
        '1 pinch salt',
        'FOR THE FILLING:',
        '1/2 cup (150g) lemon curd',
        '2 cups (approx. 300g) fresh strawberries',
      ],
      steps: [
        'FOR THE CAKE BATTER:',
        'Using a handheld or stand mixer with a paddle attachment, ',
        'beat the butter on high until creamy. Add both sugars and beat',
        ' on medium-high speed until creamy. Add eggs, vanilla, ',
        'and beat on medium speed until everything is combined. ',
        'Scrape down the sides and bottom of the bowl as needed. Set aside.',
        'In a large bowl, mix together the flour, baking powder, and salt.',
        'Slowly add the dry ingredients to the wet ingredients, stirring well.',
        'Add the milk, lemon zest, and lemon juice, and stir with a rubber spatula until everything is just combined. Do not overmix.',
        'Spoon batter evenly into the 2 prepared cake pans and bake for about 25 minutes or until a toothpick inserted in the center comes out clean.',
        ' Remove from the oven and allow to cool completely before assembling the cake.',
        'FOR THE FROSTING:',
        'Using a handheld or stand mixer with a paddle attachment, beat cream cheese and butter together on medium speed until no lumps remain, about 3 full minutes.',
        ' Add confectioners’ sugar, 1 or 2 Tablespoon cream, vanilla extract, and salt with the mixer running on low. Increase to high speed and beat for 3 minutes.',
        'FOR THE FILLING AND ASSEMBLING THE CAKE:',
        'Using a large serrated knife, trim the tops off the cake layers to create a flat surface.',
        'Place 1 layer on your cake stand. Evenly cover the top with the lemon curd, then add a layer of sliced strawberries, and one layer of cream cheese frosting.',
        'Top with 2nd layer, and cover with more frosting, on top and if desired on the sides if you want a more finished visual (I like mine half naked, making it more rustic).',
        ' Cover with whole and half strawberries, and refrigerate for at least 45 minutes before serving or the cake may fall apart as you cut.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: ' Beetroot',
      country: 'Australia',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/burger-with-beetroot.jpg',
      rating: 4,
      information:
          '“Bloody beetroot” is something I muttered often when travelling around Australia because I can’t stand it! Unfortunately for me Aussie’s put beetroot on their burgers and sandwiches, in salads and often just on the side of the plate. Yuck!',
      duration: '1 hour 45 minutes',
      ingredients: [
        'FOR THE BRIOCHE BURGER BUNS (MAKES 6-8 BUNS):',
        '1/4 oz (7g) active dry yeast',
        '1.7 oz (50g) water',
        '2.8 oz (80g) milk, lukewarm',
        '10.5 oz (300g) all-purpose flour',
        ' large egg + 1 egg for brushing',
        '1.5 oz (45g) sugar',
        '3.5 oz (100g) butter at room temperature, diced',
        '1 teaspoon (5g) salt',
        '2 Tablespoons black sesame and pumpkin seeds (optional)',
        'FOR THE BEET PATTIES:',
        '2 cups (350g) beets, peeled and cubed',
        '1/2 cup (90g) uncooked quinoa (or 1 cup cooked quinoa)',
        '3.5 ounces (100g) feta cheese, crumbled',
        '1/2 onion, finely chopped',
        '2–4 Tablespoons rolled oats or breadcrumbs',
        '1 Tablespoon olive oil',
        '1 large egg',
        '1 garlic clove, crushed',
        '2 teaspoons lemon juice',
        'Salt and freshly ground pepper',
        'FOR THE AVOCADO DIP:',
        ' 2 ripe avocados',
        '3 Tablespoons lemon juice',
        '1 garlic clove, minced',
        '1/4 teaspoon chili flakes',
        ' Salt and freshly ground pepper',
        ' Fresh basil leaves (to serve)',
      ],
      steps: [
        'FOR THE BRIOCHE BUNS:',
        'In a small bowl, dissolve the yeast into the water and the lukewarm milk.',
        'Place all the ingredients except for the salt into the bowl of a stand mixer.',
        ' Mix on speed 1 for about two minutes. Add the salt. Mix on speed 4 for two minutes.',
        ' Switch to speed 6 and mix until the dough becomes smooth and slaps the bowl.',
        'Remove from the bowl and shape into a ball with your hands.',
        ' Place into the bowl again and let rise until doubled in size, about 2 hours.',
        'Shape the dough: divide the dough into 6 equal parts. Use your hands to flatten each dough portion. ',
        'Fold the tips into the center, and repeat again from all sides, until you get a little pouch. ',
        'Flip it over, trap the dough with your hands, press a little bit and roll it onto the countertop. It must stick to the countertop a little bit. ',
        'Place each little ball onto a baking tray lined with parchment paper.',
        ' Cover with a cloth and let rise until the dough is strong and you feel the air inside, about one hour minimum.',
        'Brush with beaten egg, sprinkle some black sesame seeds and pumpkin seeds on top, and bake at 375°F (190° C) for about 15 minutes or until golden-brown.',
        ' Transfer to a cooling rack and set aside.',
        'FOR THE BEET PATTIES:',
        'Preheat the oven at 350°F (180° C) and line a baking sheet with parchment paper or foil. Set aside.',
        'Bake the quinoa according to the package instructions. Set aside.',
        'Place the beet onto the baking sheet, drizzle some olive oil and roast for about 30 minutes. ',
        'Remove from the oven and set aside to cool.',
        'Place the roasted beets in a food processor and pulse 2 or 3 times – you need some texture for the burgers, so make sure you don’t mash them completely.',
        'Transfer the beets into a large bowl, add all the other ingredients and stir to combine. ',
        'If the texture is too mushy add more rolled oats or breadcrumbs until you obtain the desired consistency.',
        'Using a measuring cup or your hands, shape the burgers and place them on a lined baking sheet.',
        'Bake in the oven for 15 minutes on one side, then flip over and bake for 15 more minutes.',
        'FOR ASSEMBLING THE BURGERS:',
        'Mash the avocados with a fork, and season with lemon juice, salt, pepper and chili flakes.',
        'When burger buns are baked, cut in halves, add the beet patties, and generously spread the avocado dip on top (and/or underneath).',
        ' Sprinkle some basil leaves and serve immediately.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Barramundi',
      country: 'Australia',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/barramundi-commons.jpg',
      rating: 4,
      information:
          'You’ll be hard pushed to travel around Australia and not see Barramundi on the menu at least once. Barramundi is the Aboriginal name for this type of sea-bass found in Australia and the Indo-Pacific. Barramundi literally translates as “large-scaled silver fish”. You have to try this fish, it’s very popular for good reason – it’s delicious!',
      duration: '1 h 30 min',
      ingredients: [
        '1/4 cup (60ml) soy sauce',
        '1/4 cup (60ml) mirin seasoning',
        '1 tbs sake (optional)',
        '2 tbs honey',
        '1 tbs miso paste',
        '5cm-piece ginger, peeled, cut into matchsticks',
        '4 Coles Australian Ocean Barramundi Fillets',
        '180g soba noodles',
        '2 bunches baby broccoli, halved lengthways',
        '1 bunch asparagus, woody ends trimmed',
        '2 tsp sesame oil',
        '1 long red chilli, thinly sliced (optional)',
      ],
      steps: [
        'Combine the soy sauce, mirin, sake, if using, honey and miso paste in a saucepan over medium heat. ',
        'Bring to a simmer. Cook, stirring occasionally, for 2-3 mins or until sauce thickens slightly. ',
        'Remove from heat. Stir in the ginger. Cool slightly. Transfer half the soy sauce mixture to a large glass or ceramic bowl.',
        ' Add barramundi. Turn to coat. Cover with plastic wrap and place in the fridge for 15 mins to develop the flavours.',
        'Cook the soba noodles in a large saucepan of boiling water for 2-3 mins or until tender. Drain well and return to the pan.',
        ' Add half the remaining soy sauce mixture and toss to combine.',
        'Heat a chargrill on medium-high. Brush baby broccoli and asparagus with oil.',
        ' Cook on grill, turning, for 2-3 mins or until lightly charred. Transfer to a plate.',
        'Cook the barramundi on the grill for 2-3 mins each side or until just cooked through. Transfer to a plate.',
        'Divide the noodles, broccoli and asparagus among serving bowls.',
        ' Top with barramundi and drizzle with the remaining soy sauce mixture. Sprinkle with chilli, if using.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Lamingtons',
      country: 'Australia',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/lamington-cake.jpg',
      rating: 4,
      information:
          'If you like coconut you’ll love this very Aussie food – the Lamington. A Lamington is basically a square of sponge cake covered in chocolate sauce or sometimes raspberry sauce and then covered in coconut. To begin with I avoided these because I thought they sounded disgusting as I’m not so keen on coconut, however they’re really nice with a cup of tea in the afternoon!',
      duration: '1 h 30 min',
      ingredients: [
        '6 eggs',
        '3/4 cup caster sugar',
        '1 1/2 teaspoons vanilla extract',
        '1/2 cup plain flour',
        '1/2 cup self-raising flour',
        '1/2 cup cornflour',
        '2 tablespoons boiling water',
        '3 cups desiccated coconut',
        '4 cups icing sugar mixture',
        '1/2 cup cocoa powder, sifted',
        '1 cup boiling water',
        '20g butter',
      ],
      steps: [
        'Preheat oven to 180°C/160°C fan-forced. ',
        'Grease a 3cm-deep, 20cm x 30cm (base) lamington pan.',
        ' Line with baking paper, allowing 2cm overhang on all sides.',
        'Using an electric mixer, beat eggs, sugar and vanilla in a bowl on high speed for 8 to 10 minutes or until thick and creamy and sugar dissolved.',
        ' Transfer to a bowl.',
        'Using a large metal spoon, fold in sifted flours .',
        ' Fold in boiling water. Pour mixture into prepared pan. Bake for 20 to 25 minutes or until centre springs back when lightly touched.',
        ' Line a wire rack with baking paper. Stand sponge in pan for 5 minutes. Transfer, top side up, onto prepared rack. ',
        'Cover with a clean tea towel. Set aside overnight.',
        'Cut cake into 12 pieces. Place coconut in a dish.',
        'Make icing Place icing sugar, cocoa, boiling water and butter in a saucepan over medium heat. ',
        'Bring to the boil, stirring. Reduce heat to low. Simmer for 1 to 2 minutes or until slightly thickened. ',
        'Remove from heat. Set aside to cool for 1 to 2 minutes.',
        'Using 2 forks, dip 1 piece cake in icing. Shake off excess. Toss in coconut. Place on a wire rack over a baking tray. ',
        'Repeat with remaining cake, icing and coconut. Stand for 2 hours or until set.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Lamb leg roast',
      country: 'Australia',
      imageUrl:
          'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F120405074950-roasted-leg-of-lamb.jpg',
      rating: 4,
      information:
          'Many a wandering son or daughter returns home for Sunday lunch when mum\'s cooking a lamb roast. It\'s the garlic, rosemary and olive oil that make this piece of meat delicious and tender. It\'s then served with enough baked potatoes to end any family feud. Though its origins may be beyond Australian borders, Aussies will proudly say only they know how to put on a good one.',
      duration: '1 h 30 min',
      ingredients: [
        '5 garlic cloves, crushed',
        '1 tablespoon MasterFoods® Paprika',
        '1 large lemon, juiced',
        '1/4 cup olive oil',
        '1.5kg boned lamb leg, butterflied',
        'olive oil cooking spray',
        'jacket potatoes, to serve',
        '3/4 cup whole-egg mayonnaise',
        '1/2 cup stuffed green olives, chopped',
        '1 teaspoon paprika',
        '1/2 small lemon, juiced',
      ],
      steps: [
        'Combine garlic, paprika, 2 tablespoons lemon juice and oil in a large, shallow ceramic dish.',
        ' Season both sides lamb with salt and pepper. Score lamb skin (this allows marinade to penetrate). ',
        'Place lamb in marinade and turn to coat.',
        ' Cover and refrigerate for 3 hours. Remove from fridge 30 minutes before cooking.',
        'Make green olive mayonnaise: Meanwhile, combine mayonnaise, olive, paprika and 1 tablespoon lemon juice in a bowl.',
        ' Season with salt and pepper. Mix well. Cover and refrigerate until ready to serve.',
        'Spray a cold barbecue plate or grill with oil. Preheat on high heat. ',
        'Reduce heat to medium-high. Barbecue lamb, skin side down, for 10 minutes. Turn and cook for 5 minutes. ',
        'Reduce heat to medium-low. Cover lamb with barbecue hood . ',
        'Barbecue for a further 15 minutes for medium or until cooked to your liking. Remove from heat. ',
        'Cover loosely with foil. Set aside in a warm place for 10 minutes to rest. Slice lamb thinly across the grain.',
        'Serve lamb with green olive mayonnaise and jacket potatoes.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Prawns',
      country: 'Australia',
      imageUrl:
          'https://img.taste.com.au/cEXe5nns/w643-h428-cfill-q90/taste/2018/12/prawn-cocktail-banh-mi-p39-145190-2.jpg',
      rating: 5,
      information: 'Ready to slip some shrimp on the barbie?'
          'Well first off, Australians don’t call it shrimp – it’s prawns, mate. And whether you get them at a restaurant or grilled up at a barbecue, you can’t go wrong with prawns. With the freshest seafood found along Australia’s shores, you’re sure to get tasty prawns no matter where you try them.',
      duration: '1 h 30 min',
      ingredients: [
        '4 long crusty bread rolls',
        '2 cups finely shredded iceberg lettuce',
        '20 cooked medium prawns, peeled, deveined',
        'Fresh coriander sprigs, to serve',
        '1 long fresh red chilli, thinly sliced, to serve',
        '1 Lebanese cucumber, thinly sliced',
        '2 tablespoons rice wine vinegar',
        '2 teaspoons white sugar',
        '1/2 teaspoon sea salt',
        '125g (1/2 cup) Kewpie or whole-egg mayonnaise ',
        '2 tablespoons tomato sauce',
        '1 tablespoon sriracha chilli sauce',
        '1 teaspoon Worcestershire sauce',
        '2 tablespoons fresh lime juice',
      ],
      steps: [
        'For the quick-pickle cucumber, place the cucumber, vinegar, sugar and salt in a large bowl.',
        ' Use your hands to combine, ensuring each slice is coated in the liquid. Set aside for 15 minutes for the flavours to develop.',
        'Meanwhile, for the cocktail sauce, place all the ingredients in a bowl and stir until well combined.',
        'When ready to assemble, gently squeeze and discard the excess liquid from the pickled cucumber.',
        ' Split the bread rolls lengthways, taking care not to cut all the way through.',
        ' Generously spread both sides of bread with the spicy cocktail sauce. ',
        'Top with the iceberg lettuce and cucumber. ',
        'Divide prawns among the rolls and drizzle with extra cocktail sauce.',
        ' Sprinkle with the coriander sprigs and chilli.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Meat Pies',
      country: 'Australia',
      imageUrl:
          'https://img.taste.com.au/OfKLVCzw/w643-h428-cfill-q90/taste/2019/09/pie-maker-meat-pies-154222-1.jpg',
      rating: 4,
      information:
          'You can\'t tell anyone you\'re Australian unless you\'ve eaten a meat pie.'
          ' More than once. The flaky package that contains this guilty pleasure is the epitome of Australian food.'
          'Colloquially referred to as a "dog\'s eye," the ingredients of the parcel have long been debated in Australian cuisine.'
          'It\'s on the menu at every house party, sporting venue and morning after a big night. Nowadays, the meat pie has many up-market and gourmet variations, but if you like to keep it reasonably simple have the one with mashed potatoes and gravy.',
      duration: '1 h 30 min',
      ingredients: [
        '1 tablespoon olive oil',
        '1 brown onion, finely chopped',
        '500g beef mince',
        '50g (1/3 cup) gravy mix',
        '1 tablespoon Worcestershire sauce',
        '60ml (1/4 cup) tomato sauce, plus extra, to serve',
        'White pepper, to season',
        '4 sheets (25 x 25cm) frozen puff pastry, just thawed',
        '1 egg, lightly whisked',
      ],
      steps: [
        'Heat the oil in a large frying pan over medium heat.',
        ' Add onion and cook, stirring often, for 2 minutes or until softened.',
        ' Add the mince and cook, stirring with a wooden spoon to break up any lumps, for 5 minutes or until browned and cooked through.',
        'Sprinkle the mince with the gravy mix.',
        ' Stir to coat. Add 250ml (1 cup) water and cook, stirring, for 1 minute or until sauce thickens slightly. ',
        'Add the tomato and Worcestershire sauces and season with salt and white pepper. ',
        'Simmer, stirring often, for 10 minutes or until thick. Remove from heat.',
        ' Cover and set aside for 30 minutes to cool.',
        'Use the pie maker pastry cutter to cut 8 large and 8 small circles from the pastry dough. ',
        'Press 4 large dough circles into the pie holes. Spoon mince mixture over dough base until level.',
        ' Top with the 4 small dough circles. Brush with egg. Turn on the pie maker. ',
        'Close and cook for 10 minutes or until pastry is golden.',
        'Repeat with the remaining pastry and mince. Serve pies hot with tomato sauce.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Moreton Bay Bug',
      country: 'Australia',
      imageUrl:
          'https://img.taste.com.au/d2hSWjVN/w643-h428-cfill-q90/taste/2016/11/moreton-bay-bug-avocado-salad-87622-1.jpeg',
      rating: 3,
      information:
          'Don\’t worry – this isn\’t an actual bug. Moreton Bay Bugs are more like lobster, and are often said to taste even better'
          'You\’ll find Moreton Bay Bugs featured in seafood dishes all over Australia. They are usually cut in half, drizzled in butter, oil, lemon or other seasonings and often grilled or barbecued.'
          'After one bite of these “bugs,” lobster won’t compare ever again.',
      duration: '1 h 30 min',
      ingredients: [
        '12 green Moreton Bay bug tails (see note), peeled',
        '2 tablespoons olive oil',
        '2 baby cos, outer leaves discarded',
        '3 avocados, halved',
        '1 bunch watercress, sprigs picked',
        'DRESSING',
        '1 garlic clove',
        '1/4 cup (60ml) lemon juice',
        '1 teaspoon wholegrain mustard',
        '1/4 cup (60ml) extra virgin olive oil',
      ],
      steps: [
        'Preheat a barbecue or chargrill pan to medium-high heat.',
        ' Brush bugs with oil and season with salt.',
        ' Cook, turning once, for 6-8 minutes until just cooked through and golden on the outside.',
        ' Rest, loosely covered with foil, while you make dressing.',
        'For the dressing, pound garlic with a pinch of salt in a mortar and pestle until a paste.',
        ' Add lemon juice and mustard, then slowly add oil, stirring, until combined. Season with pepper.',
        'Halve the bugs lengthways, then toss in a large bowl with the dressing.',
        ' Add the lettuce and toss to combine. Spoon in the avocado flesh, add watercress and toss gently with your hands.',
        ' Divide salad among 6 plates and serve.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Chicken Parmigiana',
      country: 'Australia',
      imageUrl:
          'https://img.taste.com.au/JRqF6cHp/w643-h428-cfill-q90/taste/2016/11/chicken-parmigiana-90446-1.jpeg',
      rating: 4,
      information:
          'Simply referred to as a “parma,” this staple is a favorite on the pub specials menu. A parma is basically a schnitzel, or chicken fried in breadcrumbs, topped with tomato sauce and melted cheese.'
          'The best way to eat a parma is at a pub parma night, where you can grab a parma and beer for a decent price.',
      duration: '1 h 30 min',
      ingredients: [
        '400g pkt frozen Coles brand chicken breast tenders',
        '1/4 cup Coles brand Italian tomato passata',
        '50g Coles champagne ham slices, from the deli',
        '6 Jarlsberg cheese slices, from the deli',
        '1 tablespoon olive oil',
        '120g baby spinach leaves',
        'Lemon wedges, to serve',
        'Coles brand mashed potato, heated, to serve',
      ],
      steps: [
        'Preheat oven to 180°C or 160°C fan. ',
        'Arrange the chicken in a single layer on a tray lined with baking paper and bake for 20 mins. ',
        'Top each piece of chicken with a little tomato passata, a ham slice and a cheese slice.',
        ' Bake for a further 5-7 mins or until the cheese melts.',
        'Meanwhile, heat the oil in a frying pan over high heat. ',
        'Add the spinach. Season and squeeze over a wedge of lemon. ',
        'Cook, stirring, for 1-2 mins or until the spinach wilts.',
        'Serve the chicken with the spinach, mash and lemon wedges.',
      ],
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Anzac biscuit tiramisu trifles',
      country: 'Australia',
      imageUrl:
          'https://img.taste.com.au/DV_YU12Z/w643-h428-cfill-q90/taste/2019/03/anzac-biscuit-tiramisu-trifles-147979-2.jpg',
      rating: 5,
      information:
          'These cookies have a history rooted in WWI. They were once made by the wives of the Australian and New Zealand Army Corps (ANZAC) and delivered to their men at war.'
          'Now these cookies are made in commemoration of ANZAC Day, April 25th, honoring those who gave their lives to the war.'
          '  The delicious cookies are essentially oatmeal cookies made with golden syrup and desiccated coconut.',
      duration: '1 h 30 min',
      ingredients: [
        '150g fresh or frozen raspberries',
        '150g strawberries, quartered or thinly sliced',
        '2 tbs orange-flavoured liqueur',
        '1 tbs caster sugar',
        '1/2 cup (125ml) espresso coffee',
        '1/4 cup (60ml) marsala wine or coffee-flavoured liqueur',
        '300ml thickened cream',
        '250g mascarpone',
        '1/4 cup (40g) icing sugar mixture',
        '1 tsp ground cinnamon',
        '12 Coles Bakery Anzac Biscuits, broken',
        'Coles Bakery Anzac Biscuits, extra, crushed',
      ],
      steps: [
        'Combine the raspberries, strawberry, orange-flavoured liqueur and caster sugar in a bowl.',
        ' Set aside for 10 mins or until the berries release their juices.',
        'Combine the coffee and wine or coffee-flavoured liqueur in a bowl.',
        'Use an electric mixer to whisk cream, mascarpone, icing sugar, cinnamon and ¼ cup (60ml) of the coffee mixture in a large bowl until soft peaks form.',
        'Dip half the broken biscuit in the remaining coffee mixture. Divide among serving glasses. ',
        'Top with half the cream mixture and half the berry mixture.',
        ' Repeat with remaining broken biscuit, coffee mixture, cream mixture and berry mixture. ',
        'Place in the fridge for 1 hour to chill. Top with extra biscuit to serve.',
      ],
    ),
  ];

  List<AustraliaFood> get australiaRecipes {
    return [..._australiaRecipes];
  }

  List<AustraliaFood> get displayedProducts {
    if (_showFavorites) {
      return _australiaRecipes
          .where((AustraliaFood product) => product.isFavorite)
          .toList();
    }
    return List.from(_australiaRecipes);
  }

  bool _showFavorites = false;
  bool get displayFavoritesOnly {
    return _showFavorites;
  }

  void toggleDisplayMode() {
    _showFavorites = !_showFavorites;
    notifyListeners();
  }
}
