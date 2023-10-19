import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/statefullogin.dart';
void main(){
  runApp(MaterialApp(home: WhatsappSplash(),));
}
class WhatsappSplash extends StatefulWidget {
  @override
  State<WhatsappSplash> createState() => _WhatsappSplashState();
}
class _WhatsappSplashState extends State<WhatsappSplash> {
  @override
  void initState(){
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_stateful()));
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 20,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                  child: Icon(FontAwesomeIcons.whatsapp,color: Colors.white,)),
            ),
          ),
          Expanded(
            flex: 1, // Adjust the flex value to control the spacing between image and text
            child: Align(
              alignment: Alignment.bottomCenter,
              child:Text("From"),
            ),
          ),

          Text("Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal),)
        ],
      ),
    );
  }
}
