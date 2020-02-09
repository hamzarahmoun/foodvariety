import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:foodvariety/provider/recipesbycountry/portugale.dart';
import 'package:foodvariety/screen/foodviewgrandir/popularviewgrande.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PortugalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final portugal = Provider.of<PortugalFood>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => PopularFoodView(
                      portugal.title,
                      portugal.imageUrl,
                      portugal.title,
                      portugal.codeFood,
                    )));
      },
      child: Container(
        height: height * 0.3,
        child: GridTile(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExtendedImage.network(
                portugal.imageUrl,
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
                      portugal.title,
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
