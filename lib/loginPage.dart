import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// void main() {
//   runApp(MaterialApp(home: LoginPage(),));
// }
class LoginPage extends StatelessWidget{
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
            ElevatedButton(onPressed: (){}, child: Text("Login")),
            TextButton(onPressed: (){}, child: Text("Not a User? SignUp Here!..")),
    ]
        ),
      ),

    );
  }

}