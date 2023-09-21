import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/registrationPage.dart';

import 'homepage.dart';
// void main() {
//   runApp(MaterialApp(home: LoginPage(),));
// }
class LoginPage extends StatelessWidget{
  String username="admin@gmail.com";
  String password="abc@123";

  final uname_controller=TextEditingController();
  final pass_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[Image.asset("assets/icons/icon.png",height: 100,width: 100,),
          Text("My App",
              style: GoogleFonts.adamina(fontSize: 30,fontWeight: FontWeight.bold,
             color: Colors.blue ),
          ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 18.0),
              child: TextField(
                controller: uname_controller,
                decoration:InputDecoration(
                  hintText: "UserName",
                  labelText: "UserName",
                    helperText: "UserName Must be an Email",
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                )
                ,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: InputDecoration(
                  hintText: "PassWord",
                  labelText: "PassWord",
                  helperText: "Password Must contain 6 characters",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(15.0))
                  )
                ),
              ),

            ),
            ElevatedButton(onPressed: (){
              if(username==uname_controller.text && password==pass_controller.text){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homepage()));
    }else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid username/password or the fields are empty"),
                backgroundColor: Colors.redAccent,));

              }
            },
                child: Text("Login")),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrationPage()));
            },
                child: Text("Not a User? SignUp Here!..")),
    ]
        ),
      ),

    );
  }

}