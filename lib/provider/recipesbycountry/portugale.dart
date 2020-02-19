import 'package:flutter/material.dart';

class PortugalFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double codeFood;

  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final String information;

  PortugalFood({
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

class Portugal with ChangeNotifier {
  List<PortugalFood> _portugalRecipes = [
    PortugalFood(
        id: 'r1',
        title: 'Caldo Verde',
        country: 'Portugale',
        imageUrl:
            'https://img.taste.com.au/-iIWrmEa/w643-h428-cfill-q90/taste/2016/11/caldo-verde-67939-1.jpeg',
        codeFood: 5,
        information:
            'From the north of Portugal, comes Caldo Verde, the famous Portuguese soup. This is one of the most popular soups and Portuguese dishes.'
            ' While Caldo Verde soup is particularly popular in the winter, you can enjoy it all year round, whether it is warm or cold outside.'
            'The soup is green in color and made with a particular dark green cabbage that is not widely available beyond Portugal’s borders. Substitutes include collard greens or kale.'
            'Wonderful flavors from the combination of potato puree, slices of chouriço sausage and local Portuguese olive oil, complete this delicious and hearty soup.'
            'We enjoyed Caldo Verde on several occasions. The soup is simple, full of flavor and with delicious textures.'
            'If you want to make this soup at home, this simple Caldo Verde recipe will have you tasting Portugal in no time.',
        duration: '1 h 30 min',
        ingredients: [
          '60ml (1/4 cup) extra virgin olive oil                      ',
          '2 onions, finely chopped                                   ',
          '1kg desiree potatoes, peeled, cut into 2cm chunks          ',
          '2 cloves garlic, finely chopped                            ',
          '2 litres Massel chicken style liquid stock                 ',
          '2 bay leaves                                               ',
          '150g cavolo nero or silverbeet leaves                      ',
          '300g dried chourico (chorizo), cut into 3mm-thick slices   ',
          'Cornbread (see related recipe), to serve                   ',
          'Piri piri seasoning, to serve                              ',
        ],
        steps: [
          'Heat olive oil in a large saucepan over low heat, add onions and cook, stirring occasionally, for 10 minutes.',
          ' Add potatoes and garlic, and cook until fragrant.',
          ' Add stock and bay leaves, bring to a simmer and cook for 15 minutes or until potatoes are tender.',
          ' Set aside 2 cups of potatoes.',
          'Using a stick blender, puree the remaining soup in the pan, then return the reserved potatoes to the soup and bring to a simmer. If the soup is too thick, thin with a little water.                                                                                                           ',
          'Meanwhile, cut out the centre stems from the cavolo nero or silverbeet, then  leaves at a time and roll the leaves up lengthwise like a cigar. ',
          'Thinly slice into shreds widthwise, add to the soup and cook for 5â€“8 minutes or until tender, then season with sea salt.           ',
          'Meanwhile, heat a non-stick frying pan over medium heat and fry chourico for 1 minute each side or until golden.                                                                                                                                                                               ',
          'Ladle the soup among bowls and top with chourico. ',
          'Serve with piri piri and corn bread.                                                                                                                                                                                                         ',
        ]),
    PortugalFood(
        id: 'r1',
        title: ' Bacalhau',
        country: 'Portugale',
        imageUrl:
            'https://www.authenticfoodquest.com/wp-content/uploads/2018/02/BacalhauaBras_eatyourwayinSintra_AuthenticFoodQuest.jpg',
        codeFood: 4,
        information:
            'Salt cod is comfort food on the Iberian Peninsula, where it is called bacalao in Spain or bacalhau in Portugal. Whatever its name, I have always been a fan.Salting and drying codfish changes the flavor, deepens it. You either love it or you don’t. Some think it tastes strong. But 50 million Spaniards can’t be wrong, can they?And Portuguese cooks say there are more than a thousand ways to prepare it. Garlic is usually an ingredient, and potatoes are nearly always an important part of the preparation. Salt cod can be baked, pan-fried, shredded for salad, made into fritters or turned into a stew. And that’s just scratching the surface.',
        duration: '1/2 hours',
        ingredients: [
          '1pound boneless salt cod fillets                                                        ',
          '1 pound dried chickpeas                                                                 ',
          '1 small onion, halved and stuck with 2 cloves                                           ',
          '1 bay leaf                                                                              ',
          'Salt and pepper                                                                         ',
          '4 tablespoons olive oil                                                                 ',
          '1 large onion, diced                                                                    ',
          '2 teaspoons chopped garlic                                                              ',
          'Pinch of crumbled saffron                                                               ',
          '2 teaspoons pimentón (smoked paprika)                                                   ',
          '2 tablespoons tomato paste                                                              ',
          '1/2 cup dry white wine                                                                  ',
          '1 1/2 pounds yellow-fleshed potatoes, such as Yukon Gold, peeled and cut in thick wedges',
          '12 littleneck clams, about 1 pound                                                      ',
          '2 cups roughly chopped cilantro                                                         ',
        ],
        steps: [
          'Rinse salt cod, then place in a bowl of cold water and soak for 8 hours or overnight.',
          ' Change water every 2 hours if possible. (If desired, fully soaked cod may be refrigerated, drained and wrapped in plastic for up to 2 days.)',
          ' Also put chickpeas in a bowl and cover with cold water by 2 inches.',
          ' Leave to soak 8 hours or overnight.                                                                                                                                                      ',
          'The next day, drain cod, chop it into 1-inch chunks, put it in a bowl and set aside.',
          ' Put chickpeas and soaking water in a large pot over high heat.',
          ' Add clove-stuck onion and bay leaf and bring to a boil. ',
          'Skim foam, turn down heat and simmer for about 45 minutes, until tender.',
          ' Halfway through cooking, add 2 teaspoons salt. ',
          'Turn off heat and leave chickpeas in their broth until ready to use. (Chickpeas may be cooked several hours ahead or even a day in advance if desired.)     ',
          'Make the stew: In a heavy soup pot, warm olive oil over high heat.',
          ' Add diced onion and let sizzle, then reduce heat and cook until softened, stirring, about 10 minutes.',
          ' Stir in garlic, saffron, pimentón and tomato paste and cook for 2 minutes. ',
          'Season mixture with salt and pepper. Add wine and bring to a brisk simmer.',
          ' Drain chickpeas, reserving 6 cups of the broth. Add the broth and potatoes to the pot, cover and cook until potatoes are tender, about 10 minutes.               ',
          'Ladle about 2 cups of the stew’s liquid over the salt cod pieces and let steep for 10 minutes (the fish will cook while steeping), then pour this mixture into the pot.',
          ' Add the clams and reserved chickpeas to the pot and simmer, covered, until clams open, 5 to 7 minutes. ',
          'To serve, stir in the cilantro and ladle the stew into big bowls. ',
        ]),
    PortugalFood(
        id: 'r1',
        title: 'Sardines',
        country: 'Portugale',
        imageUrl:
            'https://www.authenticfoodquest.com/wp-content/uploads/2018/01/Sardinhas_foodinPortugal_AuthenticFoodQuest.jpg',
        codeFood: 3,
        information:
            '3 – Sardines – Celebrated Portuguese Seafood DishesGrilled SardinesGrilled Portuguese sardines or sardinhas asadas is the summertime food of choice in Portugal. In June, the smell of grilled sardines infuse the streets of Lisbon for the whole month.That\’s when Lisbon hosts the most popular festival dedicated to sardines.  The Day of Saint Anthony or Santo António Festival celebrates grilled Portuguese sardines on June 12th and 13th.From there, the Festas de Sardinha season all other Portugal kicks off, where sardines are celebrated at several Summer festivals.',
        duration: '30 min',
        ingredients: [
          '20 medium-size sardines, cleaned                           ',
          '1 tbsp ground turmeric                                     ',
          '2 tbsp chilli powder                                       ',
          '1 tbsp ground black pepper                                 ',
          '1 tsp salt                                                 ',
          'Coconut oil for frying                                     ',
          '300 ml/10/2 fl oz/2/4 cup cottage cheese or yogurt         ',
          '1/2 cucumber, deseeded and finely chopped                  ',
          'Handful of coriander (cilantro) leaves, finely chopped     ',
          '1 garlic clove, crushed                                    ',
          'Salt and pepper                                            ',
        ],
        steps: [
          'Cut the heads and tails off the sardines to prevent them burning.',
          ' With a sharp knife, cut diagonal slashes 2 cm/¾ inch apart into the sardine flesh on both sides.',
          ' Mix together the turmeric, chilli powder, pepper and salt in a bowl.',
          ' Coat the sardines all over in the spice mix and lay them on a plate.      ',
          '   To make the tzatziki, add all of the ingredients to a bowl and mix well.',
          ' Put in the fridge for 15 minutes to allow the flavours to come together.                                                                                                                                                              ',
          'Heat coconut oil in a frying pan (skillet) over a medium-high heat and fry the sardines in batches on both sides for 2–3 minutes, depending on how thick they are, until golden brown.                                                                                                                            ',
          'Serve the sardines with a little of the aromatic oil from the pan drizzled over and the tzatziki on the side.                                                                                                                                                                                                     ',
        ]),
    PortugalFood(
        id: 'r1',
        title: ' Francesinha Sandwich',
        country: 'Portugale',
        imageUrl:
            'https://www.authenticfoodquest.com/wp-content/uploads/2018/05/Francesinha_PortoFoods_AuthenticFoodQuest.jpg',
        codeFood: 4,
        information:
            'The Francesinha sandwich is an impressive plated sandwich that will make your “heart sing”.'
            'Very popular in Porto, you will see it on almost every menu. Made with bread, ham, sausages, and steak,'
            'the sandwich is typically covered with melted cheese and an egg on top.'
            'What makes the francesinha unique is the secret sauce that each restaurant prepares in its own special way.'
            'The sauce is typically is a hot thick tomato and beer sauce used to dip or “flood” your sandwich.'
            'And the best part is that you can ask for more as needed, for no additional cost.'
            'Francesinha literally means “little French girl.” It is said to have been brought to Porto by an immigrant returning back from France. '
            'This sandwich is an adaptation of the French toasted sandwich, croque-monsieur.'
            'Served with a side of french fries, this famous Porto food packs calories, with loads of meats, cheese and sauce combined.'
            'Although it is quite heavy, it is surprisingly delightful. This is a flavorful Portuguese sandwich from Porto to enjoy in moderation.',
        duration: '30 min',
        ingredients: [
          '2 slices of good bread                              ',
          '2 linguiça, grilled and each cut into four pieces   ',
          '2 slices smoked ham                                 ',
          '3 slices of your favourite Portuguese cheese        ',
          '1/4 inch thick grilled beef steak                   ',
          '1/4 cup milk                                        ',
          '1 tablespoon corn starch                            ',
          '12 ounces beer                                      ',
          '2 tablespoons butter                                ',
          '2 tablespoons tomato paste                          ',
          '1/4 cup Port wine                                    ',
          '1 cube beef stock                                   ',
          '1 bay leaf                                          ',
          'Salt and pepper to taste                            ',
        ],
        steps: [
          'Preheat the oven to 350F (175C).                                                                                                                                                                                                                                                                                                                                                                                                                                      ',
          'In a small bowl, dissolve the corn starch in 2 tablespoons of the milk. ',
          'Stir to make certain there are no lumps. Set aside                                                                                                                                                                                                                                                                                                                                                  ',
          'In a sauce pan melt the butter on medium low heat.',
          ' Add in the tomato paste and stir well. Pour in the rest of the milk, beer, Port, and add in the bay leaf and beef stock cube. ',
          ' Increase the heat to medium high and bring to a boil, stirring frequently.                                                                                                                                                                                                               ',
          'Turn off the heat and discard the bay leaf. ',
          'Stir the corn starch and milk mixture again and add it to the sauce, stirring well. Set aside.                                                                                                                                                                                                                                                                                                                                 ',
          'Assemble the sandwich by placing a slice of cheese and one slice of bread on top of it on an oven safe dish. ',
          'Lay another slice of cheese on the bread and then layer a slice of ham, four pieces of linguiça, steak, the last four pieces of linguiça and top it with the other slice of ham and a slice of cheese.',
          ' Lay the other slice of bread on top and top with cheese. Secure the sandwich with toothpicks if you like.                                              ',
          'Pour the sauce on top of the sandwich and place the dish into the preheated oven and allow the cheese to melt, about 5-10 minutes.                                                                                                                                                                                                                                                                                                                                         ',
          'Remove the Francesinha from the oven and remove the tooth picks before serving.                                                                                                                                                                                                                                                                                                                                                                                            ',
        ]),
    PortugalFood(
        id: 'r1',
        title: 'Chicken Piri-Piri',
        country: 'Portugale',
        imageUrl:
            'https://www.authenticfoodquest.com/wp-content/uploads/2018/06/Chickenpiripiri_Kolform_Portugesedishes_AuthenticFoodQuest.jpg',
        codeFood: 3,
        information:
            'uring the Age of Exploration in the 15th and 16th centuries, Portuguese explorers traveled through coastal Africa and discovered many new spices.'
            'One of the spices was a small spicy chili pepper known as Piri-Piri, Peri-Peri, or “African devil.”'
            'Today, Portuguese chicken covered in piri-piri  is served with chips or french fries and small lettuce,'
            'tomato, and onion salad is a very popular Portuguese national dish.'
            'In Portugal, places that sell Portuguese chicken piri-piri are called churrascarias.'
            'You’ll find them in every neighborhood throughout the country.'
            'You want to eat the chicken, known as frango in Portuguese, using your hands. '
            'Locals do not use a fork and knife. The chicken is cut up in such a way that makes it easy for you to tuck in and get all the juicy bites around the bones.',
        duration: '55 min',
        ingredients: [
          '6 long fresh red chillies, coarsely chopped                                                         ',
          '6 garlic cloves, coarsely chopped                                                                   ',
          '4cm-piece fresh ginger, peeled, coarsely chopped                                                    ',
          '2 tablespoon fresh lemon juice                                                                      ',
          '1 1/2 teaspoon sea salt flakes                                                                      ',
          '180ml (3/4 cup) olive oil, plus more to brush                                                       ',
          '8 (about 100g each) boneless skinless chicken thigh fillets, trimmed, pounded to an even thickness  ',
          '195g (3/4 cup) mayonnaise                                                                           ',
          '125ml (1/2 cup) apple cider vinegar                                                                 ',
          '55g (1/4 cup) caster sugar                                                                          ',
          '2 teaspoons sea salt flakes                                                                         ',
          '1 continental cucumber, peeled, shaved into ribbons with a vegetable peeler                         ',
          '4 hamburger buns, split                                                                             ',
          '1 small red onion, thinly sliced into rings                                                         ',
          '1 cup lightly packed fresh coriander leaves and tender stems                                        ',
        ],
        steps: [
          'In a blender, puree the chilli, garlic, ginger, lemon juice and salt until smooth. ',
          'With the blender on high, gradually blend in the oil. ',
          'Transfer 125ml (1/2 cup) of the chilli mixture to a large bowl. ',
          'Add the chicken and stir to coat. Cover and refrigerate for at least 30 minutes to marinate. ',
          'Combine 80ml (1/3 cup) of the chilli mixture with the mayonnaise. Season to taste with salt.',
          ' Cover and refrigerate. Reserve the remaining chilli mixture.  ',
          'In a small bowl, whisk the vinegar, sugar and salt in a medium bowl until the sugar has dissolved.',
          ' Add the cucumber and refrigerate uncovered for at least 20 minutes. ',
          'Drain well on paper towels before using.                                                                                                                                                                                                                                                      ',
          'Preheat the barbecue on medium-high heat. ',
          'Remove the chicken from the marinade and pat dry. Season with salt.',
          ' Barbecue for 4 minutes, or until lightly charred on one side. ',
          'Turn and cook, basting the chicken with the remaining chilli mixture, for 4 minutes, or until the chicken is cooked through.                                                                                                                                                             ',
          'Meanwhile, lightly oil the cut sides of the buns and toast on the barbecue, cut side down, for 2 minutes, or until lightly toasted.                                                                                                                                                                                                                                                                                                                                  ',
          'Spread some chilli mayonnaise over the bun bottoms. ',
          'Top each with 2 pieces of chicken, pickled cucumber, onion and coriander. ',
          'Cover with the bun tops and serve.                                                                                                                                                                                                                                                                                                     ',
        ]),
    PortugalFood(
        id: 'r1',
        title: 'Polvo à la Lagareiro',
        country: 'Portugale',
        imageUrl:
            'https://www.authenticfoodquest.com/wp-content/uploads/2018/06/PolvoALagareiro_Portugesedishes_AuthenticFoodQuest.jpg',
        codeFood: 2,
        information:
            'Portuguese cuisine is famous for its delicious seafood. Beyond Bacalhau or Portuguese codfish and sardines, octopus or polvo is another popular Portuguese seafood dish loved by all.'
            'Polvo à la lagareiro is a famous octopus dish that you will find across the country. Lagareiro is a popular way of cooking seafood which includes using generous amounts of Portuguese olive oil.'
            'In this traditional Portuguese food, the octopus is typically served with boiled potatoes. The potatoes and the octopus are baked and roasted.'
            'Polvo à la lagareiro is deceptively simple and exquisite. The octopus when well cooked is really tender and flavorful. The Portuguese olive oil adds a unique fruity and slightly bitter taste to this seafood dish.'
            'With this popular Portuguese dish, you’ll find yourself enjoying octopus as you’ve never before.',
        duration: '2 h',
        ingredients: [
          '2 kg of octopus',
          '1¼ kg small white potatoes',
          '8 garlic cloves, crushed',
          '2 bay leaves',
          '1 large onion',
          '200 ml olive oil                        ',
          '1 bunch of coriander, coarsely chopped ',
          'Coarse salt                                      ',
          'Pepper, freshly ground                       ',
        ],
        steps: [
          'Remove the beak from the octopus.                                                                                                                                                                                                                          ',
          'Place the octopus in a large Dutch oven, cover with water and cook for 30 minutes with the unpeeled onion and especially no salt (this would harden the octopus).                                                                                        ',
          'Preheat the oven to 180˚C.                                                                                                                                                                                                                       ',
          'Wash the potatoes, wipe them with a cloth, and place them in a baking dish generously sprinkled with coarse salt. ',
          'Bake for 40 minutes.                                                                                  ',
          'When the octopus is cooked, remove it from its water, drain it and cut it into pieces.                                                                                                                                                            ',
          'Place in a large baking dish (terracotta if possible) with the cloves of garlic, bay leaf and cilantro and drizzle with olive oil.  ',
          'When the potatoes are cooked, shake off the excess coarse salt, crush them very lightly with your fist, just to open them slightly, then place them around the octopus and sprinkle them generously with olive oil .      ',
          'Bake again for 15 minutes.                                                                                                                                                                                                            ',
          'Add pepper and serve immediately.                                                                                                                                                                                                                 ',
        ]),
    PortugalFood(
        id: 'r1',
        title: 'Pastel de Nata',
        country: 'Portugale',
        imageUrl:
            'https://www.authenticfoodquest.com/wp-content/uploads/2018/02/PasteisdeNata_LisbonFoodTour_AuthenticFoodQuest.jpg',
        codeFood: 4,
        information:
            'Pastel de nata or Pastéis de natas (in plural)  is the iconic and famous Portuguese dessert. Every Pastelerias or pastry shop has their own version of Pastel de nata.'
            'This sweet and creamy Portuguese egg tart is so addictive and it might become your daily pastry of choice.'
            'These Portuguese desserts or Pastéis de natas are made of flour, butter, eggs, cinnamon and of course sugar. Lots of butter is layered in the dough which gives the shells their crispy and crackling texture.'
            'The dough is then cut into small pie shell and filled with the egg custard preparation. Cooked in a very hot oven, Pastel de nata is served warm with a small strong cup of Portuguese coffee, called bica in Lisbon.'
            'One bite into this crispy, creamy sweet custard, dusted with cinnamon will make your eyes roll in delight.',
        duration: '50 min',
        ingredients: [
          '11 egg yolks',
          '1 l of milk',
          '500 g sugar',
          '125 g flour',
          '1 lemon or vanilla zest',
          '1 pinch of salt                 ',
          'Puff pastry',
        ],
        steps: [
          'Mix the sugar, flour, vanilla and milk in a saucepan and add a pinch of salt.',
          'Cook, stirring, until the cream comes off the spatula. ',
          'Remove from the heat and allow to cool for a few minutes. ',
          'Incorporate the egg yolks and mix well. ',
          'Pour into small molds already garnished with puff pastry',
          'and put in the oven, previously heated to 300 ° (th 9/10). ',
          'Remove from the oven and sprinkle with cinnamon. ',
          'Taste',
        ]),
  ];

  List<PortugalFood> get portugalRecipes {
    return [..._portugalRecipes];
  }
}
