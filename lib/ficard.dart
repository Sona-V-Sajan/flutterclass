import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: FiCard(),));
}
class FiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.teal
              ),),

            Positioned(
              top: 80,
              left: 30,
              child: Row(
                children: [
                  Transform.rotate(angle: 90 * math.pi / 180,
                      child: const FaIcon(
                        size:40,
                        FontAwesomeIcons.simCard,color:Colors.grey,)),
                        SizedBox(width: 8,),

                  Transform.rotate(angle: 90 * math.pi / 180,
                      child: const FaIcon(
                        size:40,
                        FontAwesomeIcons.wifi,color: Colors.grey,)),
                ],
              ),
            ),
            Positioned(
                top:200,
                left: 20,
                child:Text("Sona V Sajan",style: GoogleFonts.aBeeZee(
                  fontSize: 20,color: Colors.grey
                ),)),
             Positioned(
                top:190,
                right: 28,
                 child:Text("VISA",style: GoogleFonts.robotoFlex(
                     fontWeight:FontWeight.bold,
                     fontSize: 20,color: Colors.grey
                 ),)


        ),
            Positioned(
                top:10,
                right: 20,
                child:Text("FI",style: GoogleFonts.fahkwang(
                    fontWeight:FontWeight.bold,
                    fontSize: 20,color: Colors.grey
                ),)


            ),


        ],
      ),
    ));
  }
}