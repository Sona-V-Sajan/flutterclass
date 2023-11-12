import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/storage/firebase/email_password_login/firebase_helper.dart';
import 'package:project2/storage/firebase/email_password_login/login_firebase.dart';

class Reg_Firebase extends StatelessWidget {
  final R_uname_cont=TextEditingController();
  final R_passw_cont=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Firebase Registration"),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello Register Here!!",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 20)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: R_uname_cont,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: "username"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: R_passw_cont,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: "password"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(

              onPressed: (){
              final email=R_uname_cont.text.trim();
              final pass=R_passw_cont.text.trim();
              Firebase_Helper().register(email: email, password: pass).then((value) {
                if(value == null){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Firebase()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
                }
              });
              //using constructor
            },
              child: Text("Register"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              color: Colors.green,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Firebase()));
            }, child: Text("Not a user Login Here")),
          )
        ],


      ),

    );
  }
}
