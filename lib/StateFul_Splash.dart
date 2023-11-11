import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/statefullogin.dart';
void main(){
  runApp(const MaterialApp(
  home :Splash2(),
  ));
}
class Splash2 extends StatefulWidget{
  const Splash2({super.key});

  @override
  State<StatefulWidget> createState() =>Splash2State();
}

class Splash2State extends State{
  @override
  void initState(){
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>const Login_stateful()));
    });
    super.initState();
  }
  @override
  //to  create our widget tree we use build function
  Widget build(BuildContext context) {
    //BuildContext-used to locate widgets o the widget tree and monitor their actions
    return  Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//
          children: [
            // Icon(
            //   Icons.alarm,
            //   size: 80,
            //   color: Colors.white,
            // ),
            // Image(image: AssetImage(("assets/icons/img.png")),width: 100,height: 100,),
            const Image(
              image: NetworkImage(
                  "https://cdn0.iconfinder.com/data/icons/leto-survey-rating/64/__laptop_online_survey_checkmark_select-512.png"),
              width: 100,
              height: 100,
            ),
            Text(
              "Set an Alarm",
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              //       // TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
