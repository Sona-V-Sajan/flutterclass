import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/practice/statefull_registration.dart';
import '../home.dart';
void main(){
  runApp(MaterialApp(home: Login_state(),));
}
class Login_state extends StatefulWidget {
  @override
  State<Login_state> createState() => _Login_stateState();
}

class _Login_stateState extends State<Login_state> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: [
          Image.asset(
            "assets/icons/icon.png",
            height: 100,
            width: 100,
          ),
          Text(
              style: GoogleFonts.abhayaLibre(
                  fontWeight: FontWeight.bold, fontSize: 30),
              "Login for User"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(border:
              OutlineInputBorder(),
              hintText: "Username",
              helperText: "Must be an letters",
              labelText: "Username",
                prefixIcon: Icon(Icons.ac_unit_rounded),
              ),
              //here uname is value entered a textformfield will stored at uname
              validator: (uname){
                if(uname!.isEmpty || !uname!.contains("@")|| !uname.contains(".com")){
                  return "Username must not be empty or invalid";
                }
                else{
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (password){
                if(password!.isEmpty || password.length<6){
                  return "Password must be an empty/password length mush be 6";
                }
                else{
                  return null;
                }
              },
              decoration: InputDecoration(border:
              OutlineInputBorder(),
                hintText: "Password",
                helperText: "Must be an special characters and numbers",
                labelText: "Password",
                prefixIcon: Icon(Icons.password),),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home()));
          }, child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  registration_stateful()));
              },
              child: Text("Not a user?Signup Here!!"))
        ],
      ),
    );
  }
}
