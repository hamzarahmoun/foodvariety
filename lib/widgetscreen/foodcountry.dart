import 'package:flutter/material.dart';
import 'package:foodvariety/provider/cuntryfood.dart';
import 'package:provider/provider.dart';

class FoodCountryWidget extends StatelessWidget {
  final String widget;
  FoodCountryWidget(this.widget);
  @override
  Widget build(BuildContext context) {
    final foodCountry = Provider.of<FoodCountry>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, widget);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.height * 0.14,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.white,
                  ]),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  image: DecorationImage(
                    image: AssetImage(foodCountry.image),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.black26, BlendMode.darken),
                  )),
            ),
          ),
          Text(
            foodCountry.code,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
