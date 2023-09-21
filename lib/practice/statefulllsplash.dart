import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/StateFul_Splash.dart';
import 'package:project2/practice/login.dart';

void main(){
  runApp(MaterialApp(
    home: Splash3(),
  ));
}
class Splash3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Splash3state();

}
class Splash3state extends State{
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).
      push(MaterialPageRoute(builder: (context)=>Login()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Center the children horizontally
        children: [//sizesboxvech cheyam,align align height
          Expanded(
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