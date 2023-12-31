import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hive_Home extends StatelessWidget {
  String? email;
  Hive_Home({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome $email",
          style: GoogleFonts.aboreto(
            fontSize:40,
            fontWeight: FontWeight.bold,
            color: Colors.cyan
          ),
        ),
      ),

    );
  }
}
