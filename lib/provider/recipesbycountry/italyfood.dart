import 'package:flutter/material.dart';

class ItalyFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double codeFood;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;

  ItalyFood({
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

class Italy with ChangeNotifier {
  List<ItalyFood> _italyRecipes = [
    ItalyFood(
      id: 'r1',
      title: 'Italian lamb pizzas',
      country: 'Italy',
      imageUrl:
          'https://img.taste.com.au/TxHVu1Mu/w643-h428-cfill-q90/taste/2016/11/italian-lamb-pizzas-22452-1.jpeg',
      codeFood: 5,
      ingredients: [
        '1 tablespoon olive oil',
        '400g lamb mince',
        '2 x 30cm pre-prepared pizza bases',
        '1/3 cup pizza sauce',
        '1 1/3 cups grated mozzarella cheese',
        '150g chargrilled red capsicum, cut into strips',
        '1 small red onion, thinly sliced',
        '3/4 cup pitted kalamata olives, halved lengthways',
        '1/3 cup finely grated parmesan cheese',
      ],
      steps: [
        'Preheat oven to 220°C. Heat oil in a frying pan over high heat.',
        ' Add lamb mince. Cook for 4 to 6 minutes, or until browned. ',
        'Transfer mince to a bowl lined with paper towels to drain.',
        'Place pizza bases onto 2 baking trays. ',
        'Spread with pizza sauce, leaving a 2cm border.',
        'Sprinkle each pizza with 1/2 cup of mozzarella.',
        ' Arrange capsicum, onion, olives and mince over pizzas. ',
        'Sprinkle with parmesan and remaining mozzarella.',
        'Bake for 10 to 15 minutes, swapping halfway through, or until golden. Serve.',
      ],
      duration: '35 min',
      information:
          'Though a slab of flat bread served with oil and spices was around long before the unification Italy, '
          'there’s perhaps no dish that is as common or as representative of the country as the humble pizza.'
          ' Easy, cheap, and filling, pizza has long been a common snack or meal, especially in Naples where '
          'tomato sauce was first added. When the Italian Queen Margherita came through the bustling city on a tour of her kingdom in 1889'
          ' she asked to try this dish that she saw so many of her subjects eating. A local entrepreneur served her the now legendary combination of tomato sauce,'
          'mozzarella, and basil, creating (or more likely, branding) the Margherita pizza. Whether by coincidence or design,'
          ' the Margherita also displays the colors of the Italian flag.',
    ),
    ItalyFood(
        id: 'r1',
        title: 'Creamy cauliflower and kale lasagne',
        country: 'Italy',
        imageUrl:
            'https://img.taste.com.au/07pu51N1/w643-h428-cfill-q90/taste/2016/11/creamy-cauliflower-and-kale-lasagne-106946-1.jpeg',
        codeFood: 4,
        information:
            'Lasagna is a wide, flat pasta noodle, usually baked in layers in the oven. Like most Italian dishes, its origins are hotly contested, but we can at least say that’s its stronghold is in the region of Emilia-Romagna, where it transformed from a poor man’s food to a rich meal filled with the ragù, or meat sauce.Traditionally lasagna wasn’t made with tomatoes (remember, those came over from the New World in the 16th century); only ragù, béchamel sauce, and cheese, usually mozzarella or Parmigiano Reggiano or a combination of the two. Even today, only a bit of tomato or tomato sauce is used in a traditional ragu, unlike most Italian-American dishes, which are basically swimming in tomato sauce. This concentrates the flavor of the meat but sometimes is a little jarring for American palates.',
        duration: '1 h 45 min',
        ingredients: [
          '60g unsalted butter',
          '1 brown onion, thinly sliced',
          '3 garlic cloves, finely chopped',
          '4 large sprigs of fresh thyme',
          '1/2 small head cauliflower, finely chopped (about 250g)',
          '2 cups (500ml) full-cream milk',
          '1 1/2 cups (375ml) thickened cream',
          '1 1/2 tablespoon olive oil',
          '1 bunch kale, stemmed, coarsely chopped (about 170g)',
          '250g pkt Coles Large Instant Lasagne Sheets',
          '225g mozzarella, shredded',
          '1/2 cup (40g) parmesan, finely grated (or vegetarian hard cheese)',
        ],
        steps: [
          'Preheat oven to 175C (155C fan-forced). ',
          'Heat a large frying pan over medium heat.',
          ' Add butter. Stir until melted. ',
          'Add onion, garlic and thyme. Sauté for 5 mins or until onion is just tender.',
          ' Add cauliflower. Cook, stirring, for 6 mins or until softened.',
          ' Add milk and cream and simmer for 5 mins or until cauliflower is tender. ',
          'Remove from heat and discard thyme. ',
          'Allow the cauliflower mixture to cool slightly. Carefully place in a blender.',
          ' Blend until smooth. Season cauliflower mixture generously with salt and pepper.',
          'Wipe frying pan clean. Heat over medium-high heat. Add oil and kale.',
          ' Cook, stirring, for 2 mins or until kale is wilted and tender. ',
          'Season with salt and pepper. Transfer to a plate lined with paper towel to drain.',
          'Spread 3/4 cup of the cauliflower cream over the base of a 24cm x 18cm x 5cm baking dish. ',
          'Place a layer of lasagne sheets over sauce, breaking to fit (don’t worry if there’s space around sheets – they expand as they cook).',
          ' Place one-third of the kale on top. Spoon ¾ cup of the cauliflower cream over kale and sprinkle with one-third of the mozzarella. ',
          'Repeat layers twice with lasagne sheets, kale, cauliflower cream and mozzarella. Top with remaining lasagne sheets.',
          ' Cover with remaining 1 1/4 cups of cauliflower cream.',
          'Cover baking dish with foil. ',
          'Place on a baking tray and bake for 45 mins or until lasagne is heated through (the tip of a knife inserted into centre of lasagne for 10 secs should feel hot to the touch) and lasagne sheets are softened.',
          'Preheat grill on high. Remove foil and sprinkle with parmesan. ',
          'Cook for 2-3 mins or until golden brown. Set aside for 15 mins to cool before serving.',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Fiorentina Steak',
        country: 'Italy',
        imageUrl:
            'https://i2.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2011/05/T-bone-on-dish-fiorentina.jpg?ssl=1',
        codeFood: 3,
        information:
            'A bistecca fiorentina, or Florentine T-bone steak, covers all of the characteristics of Italy’s best dishes: a specific cut of meat from a specific cow prepared in a very specific way all within the confines of a specific region.In the case of the enormous bistecca fiorentina, it’s a T-bone steak cut thick (at least 5 centimeters) from the loin of a Chianina cow raised in Tuscany. It’s cooked for 5 to 7 minutes on each side, depending on the thickness, until the outside is cooked and the inside remains very rare. No sense in asking for a medium-well done steak here, the meat is too thick to even think about it!',
        duration: ' 40 min',
        ingredients: [
          '1 T-bone or porterhouse steak, at least 3 inches thick & 3-3½ pounds',
          '1 bunch fresh rosemary',
          '1 bunch fresh sage',
          '2 tablespoons extra virgin olive oil',
          'Kosher salt & freshly ground black pepper, to taste',
        ],
        steps: [
          'Preheat a grill pan on medium-high heat. ',
          'Pat the steak dry, and season both sides generously with salt and pepper.',
          'Tie the rosemary and sage bunches together with butcher’s twine to form an herb brush.',
          ' Use the herbs to brush the steak with olive oil.',
          'Place the steak on the grill pan, and char it well: ',
          'cook about 12 minutes on the first side, flip, and cook about 9 minutes on the second side. ',
          'Like we said earlier, this steak is traditionally served rare.',
          'When the steak is done, remove it from the grill pan and allow it to stand for 5 minutes, so that the juices are retained when the meat is cut.',
          ' Carve off the fillet and strip steaks and slice before serving. Serve hot, and enjoy!',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Tiramisu',
        country: 'Italy',
        imageUrl:
            'https://www.bonappetour.com/assets/images/asset_pictures/1426579346-1465627.jpeg',
        codeFood: 5,
        information:
            'Light and creamy, the tiramisu is a well-known dessert sought-after by locals and travellers alike.'
            ' Ingredients such as ladyfingers, coffee, eggs, sugar, cocoa and mascarpone cheese required in the preparation of this sweet treat.'
            'If you visit Rome, you can also attend Fresh Pasta and Tiramisù Cooking Class to learn how to make home-made Tiramisù.Creative dessert-makers have given an '
            'innovative twist to the traditional recipe of the tiramisu, coming up with varieties such as the fruit tiramisu, chocolate tiramisu, and the '
            'intriguing-sounding ch’tiramisu.',
        duration: '3 h 30 min',
        ingredients: [
          '500 g (1,1 lb) of mascarpone cheese cream',
          '300 g (10,5 oz) Savoiardi ladyfingers',
          '4 medium eggs (about 220 g - 7,7 oz without shells)',
          '100 g (3,5 oz) of sugar',
          '300 g (10,5 oz) of coffee (better if espresso)',
          '2 tablespoons of rum or marsala (optional)',
          'unsweetened cocoa powder',
        ],
        steps: [
          ' add 2 tbs of rum or Marsala wine (that’s optional. If you don’t like liqueurs or you are making tiramisu for children, don’t use it) then set aside and let it cool.',
          ' Separate egg whites from yolks and remember that in order to whip the egg whites pretty stiff there should not be any trace of yolk.',
          'Take a bowl and whip the egg whites until stiff: you will get at it when the the egg whites will not move if you turn the bowl over.',
          ' When ready, set aside.',
          'Now in another bowl (or the clean same one) whisk the egg yolks with the sugar until pale and smooth, 3 to 5 minutes.',
          ' When ready add mascarpone cheese.',
          'Whisk the cream slowly with the electric mixer. ',
          'Now add stiffen egg whites.',
          'Mix with a wooden spoon, from bottom to top.',
          ' Mix slowly until it’s smooth and creamy.',
          'Now dip quickly Savoiardi Ladyfingers into the coffee. ',
          'IMPORTANT! Cookies should not engage too much coffee, otherwise your Tiramisu will turn out too soggy. ',
          'Then place them in a ceramic or glass cooking pan.',
          'Spread the mascarpone cream on top of the Savoiardi.',
          'Add another layer of Savoiardi and then cover with more mascarpone cream.',
          ' Finally sprinkle with cocoa powder. ',
          'Let rest 3 hours in the refrigerator before serving (even better if you make the tiramisu the day before, letting it to rest all night long in the fridge).',
          ' You can add chocolate flakes on top according to taste.',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Ossobuco',
        country: 'Italy',
        imageUrl:
            'https://i1.wp.com/www.walksofitaly.com/blog/wp-content/uploads/2017/02/Osso-Buco.jpg?w=1024&ssl=1',
        codeFood: 4,
        information:
            'Meat lovers will rejoice at the thought of tucking into the osso buco alla Milanese!'
            'Tender veal shanks, braised slowly in white wine, is served with an array of vegetables. A serving of aromatic gremolata, a condiment made with lemon zest, garlic and parsley, is added to complete the dish.'
            'The meal does not end when you have finished the meat and vegetables, for the best part of the dish lies in scooping out and savouring the creamy marrow from the bones of the veal.',
        duration: '1 h 50 m',
        ingredients: [
          '2 pounds veal shanks, cut into short lengths',
          '1/4 cup all-purpose flour',
          '1/4 cup Butter',
          '2 cloves garlic, crushed',
          '1 large onion, chopped',
          '1 large carrot, chopped',
          '2/3 cup dry white wine',
          '2/3 cup beef stock',
          '1 (14.5 ounce) can diced tomatoes',
          'salt and pepper to taste',
          'Gremolata:',
          '1/2 cup chopped fresh flat leaf parsley',
          '1 clove garlic, minced',
          '2 teaspoons grated lemon zest',
        ],
        steps: [
          'Dust the veal shanks lightly with flour.',
          ' Melt the butter in a large skillet over medium to medium-high heat.',
          ' Add the veal, and cook until browned on the outside. Remove to a bowl, and keep warm.',
          ' Add two cloves of crushed garlic and onion to the skillet; cook and stir until onion is tender.',
          ' Return the veal to the pan and mix in the carrot and wine. Simmer for 10 minutes.',
          'Pour in the tomatoes and beef stock, and season with salt and pepper.',
          ' Cover, and simmer over low heat for 1 1/2 hours, basting the veal every 15 minutes or so. ',
          'The meat should be tender, but not falling off the bone.',
          'In a small bowl, mix together the parsley, 1 clove of garlic and lemon zest.',
          ' Sprinkle the gremolata over the veal just before serving.',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Risotto ',
        country: 'Italy',
        imageUrl:
            'https://assets.afcdn.com/recipe/20171109/74610_w648h414c1cx1872cy2808.jpg',
        codeFood: 3,
        information:
            'Rounding out the holy trinity of Italian starches is rice, which is often eaten as the creamy, luxurious risotto. '
            'Ironically, Italians aren’t huge rice eaters, what with all the pasta and the polenta, but they are the largest producers of rice in Europe.'
            ' While southern Italy is often called the country’s bread basket, Northern Italy, especially Lombardy and Piedmont, are its rice bowl.'
            ' It’s fitting then, that the Arborio and Carneroli varieties grown in the vast rice paddies of these regions are turned into one of Italy’s most iconic dishes '
            'by being mixed with stock and stirred until they form a'
            ' velvety semi-soup that perfectly conveys the flavors of anything cooked with it. The most famous type of risotto is probably '
            'the saffron-infused risotto alla milanese, which was invented, according to legend, by the workmen building the Milan Cathedral who'
            ' were using saffron to dye the stained glass windows and figured they would also throw it into their rice. Other classic versions of the dish include'
            ' risotto al nero di sepia (with cuttlefish and ink) and risi e bisi (with pancetta and peas), both of which hail from Venice.',
        duration: '1 h 15 min',
        ingredients: [
          '500g jar Dolmio Extra Tomato, Onion & Roast Garlic Pasta Sauce',
          '4 cups (1L) chicken stock',
          '2 tbs extra virgin olive oil',
          '1 brown onion, finely chopped',
          '2 garlic cloves, crushed',
          '2 cups (400g) arborio rice',
          '400g raw banana prawns, peeled leaving tails intact, deveined',
          '1 bunch asparagus, woody ends trimmed, cut into 3cm lengths',
          '1 cup (120g) frozen peas',
          '1 small fennel, trimmed reserving fronds, thinly sliced',
          '1/3 cup basil leaves',
          'Extra virgin olive oil, extra, to serve',
          'Lemon wedges, to serve',
        ],
        steps: [
          'Combine the pasta sauce, stock and ½ cup (125ml) water in a saucepan.',
          ' Cover. Bring to the boil. Reduce heat to low and keep at a gentle simmer.',
          'Heat the oil in a large heavy-based saucepan over medium heat. ',
          'Add the onion and cook, stirring, for 5 mins or until soft. ',
          'Add the garlic and rice. Cook, stirring, for 1 min or until the grains appear glassy.',
          'Add 1/2 cup (125ml) of stock mixture to the pan.',
          ' Cook, stirring, until liquid is completely absorbed.',
          ' Repeat with the remaining stock mixture, ',
          'gently stirring constantly and allowing liquid to be absorbed before adding more, until the rice is tender yet firm to the bite and risotto is creamy. (This should take about 20 mins.) Stir in the prawns, asparagus and peas and cook for 5 mins or until the prawns curl and change colour.',
          'Sprinkle risotto with sliced fennel, reserved fronds and basil leaves.',
          ' Serve with extra oil and lemon wedges.',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Chicken saltimbocca',
        country: 'Italy',
        imageUrl:
            'https://www.bonappetour.com/assets/images/asset_pictures/1426578956-9821121.jpeg',
        codeFood: 4,
        information:
            'The dish contains thin slices of veal, topped with salty prosciutto and herb leaves. These ingredients, joined together with a toothpick, are sautéed in a pan until the meat is done. Different varieties of meat, such as chicken and mutton are also used for preparing the saltimbocca.A well-made serving of saltimbocca promises to be a delectable dish melts away in the mouth. Highly popular among locals and travellers in Italy, this savoury delight is certainly not to be missed.In fact, you can learn how to make this particular dish yourself with our host Alberto while you are in Rome. Complete with a market tour, Alberto will teach you about the beauty of Italian cuisine with a cooking class right in the heart of Rome.',
        duration: '35 min',
        ingredients: [
          '4 x 125g chicken breast fillets',
          '4 prosciutto slices',
          '12 sage leaves',
          '1 tbs olive oil',
          '40g unsalted butter',
          '150ml Marsala ',
          '100ml Massel chicken style liquid stock',
          '1 tbs lemon juice',
          '200g green beans, trimmed, shredded',
          '2 tbs toasted slivered almonds',
        ],
        steps: [
          'Flatten each chicken fillet with a rolling pin between 2 sheets of baking paper to an even thickness. ',
          'Season, then place a slice of prosciutto and a sage leaf on top of each and secure with a toothpick.',
          'Heat oil and 20g butter in a frypan over medium heat and cook chicken, prosciutto-side down, for 5 minutes or until the prosciutto starts to crisp.',
          ' Turn chicken, add remaining 8 sage leaves to the pan, then cook for a further 5 minutes.',
          ' Remove from pan, loosely cover with foil and set aside to rest.',
          'Return pan to the heat, add the Marsala, stock and lemon juice, and cook for 2-3 minutes until reduced and syrupy.',
          'Meanwhile, cook the beans in a saucepan of boiling salted water for 2 minutes. ',
          'Drain, return to the pan with the almonds and remaining 20g butter, then season and toss to combine.',
          'Serve chicken with sauce and beans.',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Gelato',
        country: 'Italy',
        imageUrl:
            'https://www.bonappetour.com/blog/wp-content/uploads/2015/03/4177028151_ca1884fabe_o-1500x1003.jpg',
        codeFood: 5,
        information:
            'A visit to Italy is not complete without having at least a serving of smooth, creamy gelato. Travelers who are on the hunt for the best versions of this delightful treat should check this article out for insights on where to find the best gelato in Italy.',
        duration: '20 mins',
        ingredients: [
          '750ml (3 cups) milk',
          '165g (3/4 cup) caster sugar',
          '2 tablespoons cornflour',
          '3/4 cup good-quality cocoa',
        ],
        steps: [
          'Whisk together 1 cup milk with the sugar, cornflour and cocoa.',
          'Place the remaining milk in a saucepan and bring to the boil.',
          'Pour the milk over the chocolate mixture and stir to combine. ',
          'Return the mixture to the saucepan and stir over low heat for about 10 minutes or until thickened.',
          'Pour the mixture into a shallow container and freeze until frozen at the edges.',
          'Remove from freezer and beat with an electric beater.',
          ' Pour back into container and re-freeze. ',
          'Repeat 2 or 3 times. (Alternatively use an ice-cream machine following manufacturer\'s directions.)',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Arancini',
        country: 'Italy',
        imageUrl:
            'https://www.bonappetour.com/assets/images/asset_pictures/1426576976-4881966.jpeg',
        codeFood: 5,
        information:
            'Crisp and golden brown, arancini refers to a dish of stuffed rice balls. The rice balls are fried after being coated in a dusting of  crunchy breadcrumbs.These rice balls are usually filled with ragù, tomato sauce, mozzarella and peas. Similar to pasta and pizza dishes in Italy, there are a diversity of regional variations of the arancini. The regional specialties are made with different fillings and shapes depending on the location that the dish is prepared in.Some examples include the arancini con ragù (containing tomato sauce, rice and mozzarella), arancini con burro (made with creamy béchamel sauce), arancini con funghi and arancini con melanzane.Why not try this classic Italian dish with local hosts Antonella and Paola if you happen to be in Rome during your trip to Italy?',
        duration: '1 h 20 min',
        ingredients: [
          '1 cup (200g) SunRice Medium Grain White Rice',
          '1 1/2 cups (375ml) chicken stock',
          '800g butternut pumpkin, peeled, seeded, cut into 2cm pieces, steamed',
          '420g can Edgell Corn Kernels, drained',
          '1/4 cup chopped basil',
          '1/2 cup (40g) finely grated parmesan',
          '200g pkt Obento Panko Bread Crumbs',
          '1/3 cup (50g) plain flour',
          '2 Coles Australian Free Range Eggs, lightly whisked',
          'Vegetable oil, to deep-fry',
          '500g jar Dolmio™ Extra Bolognese Pasta Sauce',
          'Basil leaves, to serve',
        ],
        steps: [
          'Place rice and stock in a saucepan over medium heat. ',
          'Cover. Bring to the boil. Reduce heat to low. Cook for 15 mins.',
          ' Set aside, covered, for 5 mins. Use a fork to separate the grains. Set aside to cool.',
          'Mash the pumpkin in a heatproof bowl. ',
          'Stir in rice, corn, chopped basil, parmesan and 3/4 cup (55g) of the breadcrumbs.',
          ' Place flour, egg and remaining breadcrumbs in separate shallow bowls. Roll ¼-cup portions of pumpkin mixture into balls.',
          ' Roll in flour and shake off excess. Roll in egg, then in breadcrumbs to coat.',
          ' Place on a lined tray in the fridge for 15 mins to set.',
          'Add enough oil to a large, deep saucepan to come halfway up side of pan. ',
          'Heat over medium-high heat. Cook arancini, in batches, for 2 mins or until golden brown. ',
          'Use a slotted spoon to transfer to a tray lined with paper towel.',
          'Meanwhile, heat the pasta sauce in a saucepan until heated through. ',
          'Serve with the arancini and basil leaves.',
        ]),
    ItalyFood(
        id: 'r1',
        title: 'Torrone',
        country: 'Italy',
        imageUrl:
            'https://www.bonappetour.com/assets/images/asset_pictures/1426579159-4523608.jpeg',
        codeFood: 3,
        information:
            'Creamy and sticky, the Torrone is made with ingredients such as honey, egg whites, toasted nuts and citrus zest. Thick slabs of this candy are commonly found in cafes and candy stores throughout Italy.We recommend that you try the original version, as it is hard to beat. Those with a preference for decadent treats may want to try a new variety – torrone dipped in rich chocolate!',
        duration: '45 min',
        ingredients: [
          '3/4 cup caster sugar',
          '1 1/2 cups skinless hazelnuts',
          '1 1/4 cups caster sugar, extra',
          '6 large egg whites, at room temperature',
          'Pinch of salt',
          '1 3/4 cups thickened cream',
          '1 teaspoon vanilla extract',
          '180g dark chocolate, finely chopped',
        ],
        steps: [
          'Place sugar and 1 tablespoon cold water in a small saucepan over medium-lowheat.',
          ' Stir over heat until mixture is boiling and sugar has dissolved.',
          ' Use a pastry brush dipped in cold water to brush down sides of pan to remove sugar crystals. ',
          'Boil mixture for 5 minutes or until syrup just starts to turn golden around side of pan.',
          ' Remove from heat. Stir in nuts.',
          ' Pour mixture onto a baking paper-lined baking tray. ',
          'Cool completely. Roughly chop.',
          'Place extra sugar and 1/4 cup cold water in a saucepan over medium-lowheat. ',
          'Stir over heat until mixture is boiling and sugar has dissolved, brushing down sides with a pastry brush. ',
          'Boil, without stirring, for 5 minutes or until syrup reaches 114C (soft-ball stage) on a sugar thermometer.',
          ' Remove from heat immediately.',
          'Meanwhile, using an electric mixer, beat egg whites and salt together until soft peaks form. ',
          'With the motor operating, add sugar syrup in a slow, steady stream down the side of the bowl.',
          ' Beat for 5 minutes or until meringue is stiff, glossy and cool.',
          'In a separate bowl, beat creamand vanilla together until stiff peaks form. ',
          'Fold a third of the whipped creaminto the meringue. ',
          'Fold in the nuts, chocolate and remaining cream.',
          'Line an 8cm-deep, 12.5cm x 25cm loaf pan with plastic wrap. ',
          'Pour mixture into pan. Level top with a spatula. ',
          'Cover surface with plastic wrap. Freeze overnight.',
          'Remove and discard plastic wrap. ',
          'Turn semifreddo onto a serving plate. ',
          'Using a serrated knife, cut into slices. Serve.',
        ]),
  ];

  List<ItalyFood> get italyRecipes {
    return [..._italyRecipes];
  }
}
