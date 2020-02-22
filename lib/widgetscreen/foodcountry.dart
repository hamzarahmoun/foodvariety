import 'package:flutter/material.dart';
import 'package:foodvariety/provider/cuntryfood.dart';
import 'package:provider/provider.dart';

class FoodCountryWidget extends StatelessWidget {
  final String widget;
  FoodCountryWidget(this.widget);
  @override
  Widget build(BuildContext context) {
    final foodCountry = Provider.of<FoodCountry>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        top: 8,
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, widget);
            },
            child: Container(
              height: height < 500 ? height * 0.15 : height * 0.13,
              width: height < 500 ? width * 0.24 : width * 0.26,
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
              fontSize: height < 500 ? 10 : 15,
            ),
          ),
        ],
      ),
    );
  }
}
