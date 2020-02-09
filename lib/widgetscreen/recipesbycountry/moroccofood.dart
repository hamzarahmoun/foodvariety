import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/moroccofood.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoroccoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final morocco = Provider.of<MoroccoFood>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => PopularFoodView(
                      morocco.title,
                      morocco.imageUrl,
                      morocco.title,
                      morocco.codeFood,
                    )));
      },
      child: Container(
        height: height * 0.3,
        child: GridTile(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExtendedImage.network(
                morocco.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black54,
                child: ListTile(
                  title: Center(
                    child: Text(
                      morocco.title,
                      style: GoogleFonts.abel(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
