import 'package:flutter/material.dart';

class ThailandFood with ChangeNotifier {
  final String id;
  final String title;
  final String country;

  final String imageUrl;
  final double codeFood;
  ThailandFood({
    @required this.id,
    @required this.title,
    @required this.country,
    @required this.imageUrl,
    this.codeFood,
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
    ),
    ThailandFood(
      id: 'r1',
      title: 'Spicy Green Papaya Salad',
      country: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/7794345124_f48e5b469c_k.jpg',
      codeFood: 4,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Laab (Spicy Salad)',
      country: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/14791401790_75318902ed_k.jpg',
      codeFood: 3,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Pad See Eiw ',
      country: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/23521253658_4e28675409_k.jpg',
      codeFood: 5,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Pad Krapow (Fried Basil)',
      country: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/5329148305_ed69be0268_o.jpg',
      codeFood: 4,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Khao Soi',
      country: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/1814702760_8900314ecb_o.jpg',
      codeFood: 5,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Kai Med Ma Muang',
      country: 'Thailand',
      imageUrl:
          'https://img.theculturetrip.com/1024x/smart/wp-content/uploads/2017/12/3085514331_263f899b4e_o.jpg',
      codeFood: 2,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Kai Jeow',
      country: 'Thailand',
      imageUrl:
          'https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco,c_fit,w_760/https%3A%2F%2Fstorage.googleapis.com%2Fgen-atmedia%2F3%2F2011%2F04%2F6da3f80833858ee3ce346b36fee92f01ef84465b.jpeg',
      codeFood: 3,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Kao Niew Ma Muang',
      country: 'Thailand',
      imageUrl:
          'https://vivre-en-thailande.com/files/2017/01/Mango-Sticky-Rice_0.jpg',
      codeFood: 4,
    ),
    ThailandFood(
      id: 'r1',
      title: 'Phat thai',
      country: 'Thailand',
      imageUrl:
          'https://i.pinimg.com/originals/8f/96/f0/8f96f0f4214350358dd0b80e84c79fb6.jpg',
      codeFood: 5,
    ),
  ];

  List<ThailandFood> get thailandRecipes {
    return [..._thailandRecipes];
  }
}
