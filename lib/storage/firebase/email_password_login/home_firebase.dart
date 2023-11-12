import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/storage/firebase/email_password_login/firebase_helper.dart';
import 'package:project2/storage/firebase/email_password_login/login_firebase.dart';

class Home_Firbase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME !!" ,style: GoogleFonts.adventPro(
              fontSize:24,fontWeight:FontWeight.bold

            ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Firebase_Helper().logout().then((value) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login_Firebase())));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.purple,
                child: Text("Logout"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
