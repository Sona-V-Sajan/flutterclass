import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Card extends StatelessWidget {
  NetworkImage? image;
  String? text;
  IconData? icon;
  VoidCallback? click;
  VoidCallback? click1;

  Custom_Card({
    required this.image,
    required this.text,
    this.icon,
    required this.click,
    required this.click1
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(children: [
            Image(image: image!),
            Positioned(
              top: 18,
              right: 18,
              child: Icon(
                Icons.favorite,
                size: 15,
                color: Colors.red,
              ),
            ),
          ]),
          Text(
            text!,
            style: GoogleFonts.satisfy(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: click,
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  )),
              ElevatedButton(onPressed: click1, child: Text("Button"))
            ],
          )
        ],
      ),
    );
  }
}
