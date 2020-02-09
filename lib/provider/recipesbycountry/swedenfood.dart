import 'package:flutter/material.dart';

class SwedenFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;

  final String imageUrl;
  final double codeFood;
  SwedenFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
  });
}

class Sweden with ChangeNotifier {
  List<SwedenFood> _swedenRecipes = [
    SwedenFood(
      id: 'r1',
      title: 'Jansson’s Temptation',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/8350547256_433edf3e0a_k.jpg',
      codeFood: 4,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Marinated Salmon ',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/18918340424_1d44504fb5_k.jpg',
      codeFood: 5,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Crayfish August',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/2752422189_2047e14d12_b.jpg',
      codeFood: 3,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Knäckebröd: Crisp Bread',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/9650424892_df1eabdd1e_k.jpg',
      codeFood: 2,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Chives & Sour Cream',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/4736272427_f2af945e3f_b.jpg',
      codeFood: 5,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Smörgåsbord',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/1024px-ny_nordisk_mat_12.jpg',
      codeFood: 4,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Toast Skagen',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/16772711111_8eae3ca570_o.jpg',
      codeFood: 3,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Meatballs & Macaroni',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/22963330526_b65c0bd063_h.jpg',
      codeFood: 2,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Princess Cake',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/5831315061_9966f6b0e2_b.jpg',
      codeFood: 4,
    ),
    SwedenFood(
      id: 'r1',
      title: 'Saffransbullar & Cinnamon Buns',
      country: 'Sweden',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2016/06/22851306636_3c4c913611_k.jpg',
      codeFood: 5,
    ),
  ];

  List<SwedenFood> get swedenRecipes {
    return [..._swedenRecipes];
  }
}
