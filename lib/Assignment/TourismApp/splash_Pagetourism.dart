import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/Assignment/TourismApp/home_Pagetourism.dart';

void main(){
  runApp(MaterialApp(home: Tourism_Splashpage(),));
}
class Tourism_Splashpage extends StatefulWidget {
  @override
  State<Tourism_Splashpage> createState() => _Tourism_SplashpageState();
}

class _Tourism_SplashpageState extends State<Tourism_Splashpage> {
  void initState(){
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_Tourism()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(image: AssetImage("assets/img/tourism.png")),
          )
        ],
      ),
    );
  }
}
