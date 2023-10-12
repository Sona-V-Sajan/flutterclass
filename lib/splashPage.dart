import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //to run an app
  runApp(MaterialApp //default theme of our flutter app
      (
    home: SplashPage(//initial page to be launched while running an app

        ),
  ));
}

class SplashPage extends StatelessWidget {
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
