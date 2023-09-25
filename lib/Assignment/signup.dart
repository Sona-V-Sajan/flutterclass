import 'package:flutter/material.dart';

import '../loginPage.dart';

class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username = "admin@gmail.com";
  String pass = 'abc123';
  final key1=GlobalKey<FormState>();
  bool passwordhidden=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:
          Text("Sign Up",style: TextStyle(
              fontSize: 50,fontWeight: FontWeight.bold
          ))),
          Text("Create an Account .Its  free",
              style: TextStyle(fontSize: 15,color: Colors.grey)),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email id",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscuringCharacter: ".",
              obscureText: passwordhidden,
              validator: (password){
                if(password!.isEmpty|| password!= pass){
                  return "Pasword must not be empty/password  length must be >6";

                }
                else{
                  return null;
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password", prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(passwordhidden==true){
                        passwordhidden=false;
                      }
                      else{
                        passwordhidden=true;
                      }
                    });
                  },
                      icon: Icon(passwordhidden==true
                          ?Icons.visibility_off_sharp
                          :Icons.visibility) )),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscuringCharacter: ".",
              obscureText: passwordhidden,
              validator: (password){
                if(password!.isEmpty|| password!= pass){
                  return "Pasword must not be empty/password  length must be >6";

                }
                else{
                  return null;
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password", prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(passwordhidden==true){
                        passwordhidden=false;
                      }
                      else{
                        passwordhidden=true;
                      }
                    });
                  },
                      icon: Icon(passwordhidden==true
                          ?Icons.visibility_off_sharp
                          :Icons.visibility) )),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(minWidth:double.infinity,
              height:60,onPressed: (
                  ){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  side:BorderSide(
                    color: Colors.green,
                  ) ,
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white70),),
            ),
          ),



        ],
      ),

    );
  }
}
