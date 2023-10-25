import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Cart extends StatelessWidget {
  AssetImage? image;
  String? description;
  String? pricing;
  IconData? stars;
  IconData? favourite;
  String? rating;

  Custom_Cart({
    required this.image,
    required this.description,
    required this.pricing,
    required this.stars,
    required this.favourite,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( // Wrap Card with Container
          color: Colors.grey, // Set the background color
          child: Card(
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Image(image: image!, height: 100, fit: BoxFit.fitWidth),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 30,
                      child: Text(
                        description!,
                        style: GoogleFonts.abel(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      pricing!,
                      style: const TextStyle(color: Colors.blueAccent, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Icon(favourite!, color: Colors.grey),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(stars!, color: Colors.yellow),
                        Icon(stars!, color: Colors.yellow),
                        Icon(stars!, color: Colors.yellow),
                        Icon(stars!, color: Colors.yellow),
                        Icon(stars!,color: Colors.grey,),
                      ],
                    ),
                    Text(
                      rating!,
                      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
