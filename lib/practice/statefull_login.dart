import 'package:flutter/material.dart';

class Login_state extends StatefulWidget {
  @override
  State<Login_state> createState() => _Login_stateState();
}

class _Login_stateState extends State<Login_state> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
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
          ElevatedButton(onPressed: () {}, child: Text("Login")),
        ],
      ),
    );
  }
}
