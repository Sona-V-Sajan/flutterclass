import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: Splashpage(),
  ));
}

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Center the children horizontally
        children: [//sizesboxvech cheyam,align align height
          const Expanded(
            flex: 18, // Adjust the flex value to control the spacing between image and text
            child: Center(
              child: Image(
                image: AssetImage("assets/img/googlepay.png"),
                width: 150,
                height: 150,
              ),
            ),
          ),
          Expanded(
            flex: 1, // Adjust the flex value to control the spacing between image and text
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Google",
                style: GoogleFonts.aBeeZee(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
