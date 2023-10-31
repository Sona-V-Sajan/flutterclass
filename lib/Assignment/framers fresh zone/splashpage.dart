import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/Assignment/framers%20fresh%20zone/homepage.dart';
void main(){
  runApp(MaterialApp(home: Farmers_Splash(),));
}
class  Farmers_Splash extends StatefulWidget {
  @override
  State< Farmers_Splash> createState() =>  Farmers_SplashState();
}

class Farmers_SplashState extends State< Farmers_Splash> {
  void initState(){
  Timer(Duration(seconds: 6), () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage_Farm()));
  });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset("assets/img/farmerzone/framers1.jpeg",fit: BoxFit.cover,width: double.infinity,height: double.infinity,)

      //   Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Image(image: AssetImage("assets/img/framers1.jpeg"))
      //   ],
      // ),
    );
  }
}
