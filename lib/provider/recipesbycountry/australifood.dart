import 'package:flutter/material.dart';

class AustraliaFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;
  final String imageUrl;
  final double rating;
  bool isFavorite;
  AustraliaFood(
      {@required this.id,
      @required this.title,
      @required this.country,
      @required this.imageUrl,
      this.rating,
      this.isFavorite = false});
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
    ),
    AustraliaFood(
      id: 'r1',
      title: ' Beetroot',
      country: 'Australia',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/burger-with-beetroot.jpg',
      rating: 4,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Barramundi',
      country: 'China',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/barramundi-commons.jpg',
      rating: 4,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Lamingtons',
      country: 'Australia',
      imageUrl:
          'https://nomadsworld.com/wp-content/uploads/2017/08/lamington-cake.jpg',
      rating: 4,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Lamb leg roast',
      country: 'Australia',
      imageUrl:
          'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F120405074950-roasted-leg-of-lamb.jpg',
      rating: 4,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Pavlova',
      country: 'Australia',
      imageUrl:
          'https://content.skyscnr.com/m/69f70dc70f5b7ef8/Large-GettyImages-508137064.jpg',
      rating: 5,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Meat Pies',
      country: 'Australia',
      imageUrl:
          'https://www.aboutaustralia.com/wp-content/uploads/2018/11/Meat-pie-credit-David-McLeish.jpg',
      rating: 4,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Moreton Bay Bug',
      country: 'Australia',
      imageUrl:
          'https://www.aboutaustralia.com/wp-content/uploads/2018/11/Moreton-Bay-Bug-credit-Tourism-and-Events-Queensland.jpg',
      rating: 3,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Chicken Parmigiana',
      country: 'Australia',
      imageUrl:
          'https://www.aboutaustralia.com/wp-content/uploads/2018/11/Chicken-parmigiana.jpg',
      rating: 4,
    ),
    AustraliaFood(
      id: 'r1',
      title: 'Anzac Biscuits',
      country: 'Australia',
      imageUrl:
          'https://images.chinahighlights.com/allpicture/2019/11/a47d9323b7ae409ba96e628d_894x596.jpg',
      rating: 5,
    ),
  ];

  List<AustraliaFood> get australiaRecipes {
    return [..._australiaRecipes];
  }

  bool _showFavorites = false;
  bool get displayFavoritesOnly {
    return _showFavorites = false;
  }

  void toggleDisplayMode() {
    _showFavorites = !_showFavorites;
    notifyListeners();
  }
}
