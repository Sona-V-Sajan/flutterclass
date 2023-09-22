import 'package:flutter/material.dart';
import 'package:project2/practice/statefull_login.dart';

class registration_stateful extends StatefulWidget {
 @override
  State<registration_stateful> createState() => registration_statefulState();

  registration_statefulState() {}
}

class _registration_statefulStae extends State<registration_stateful> {
   final formkey=GlobalKey<FormFieldState>();//
  String? pass;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Registration page"),),
      body: Form(
        key: formkey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(   hintText:"Name",
                  labelText: "Name",
                  helperText: "Must be an letters",
                  prefix: Icon(Icons.account_circle),
                  border:OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(14.0))) ) ,),
          ),
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
            padding: const EdgeInsets.only(bottom: 18.0),
            child: TextFormField(validator: (phonenumber){
                if(phonenumber!.isEmpty || phonenumber.length!=10){
                  return "Password must be an empty/password length mush be 6";
                }
                else{
                  return null;
                }
              },
              decoration: InputDecoration(
                  hintText: "Phone Number",
                  labelText: "Phone Number",
                  helperText: "Must be an number",
                  prefix: Icon(Icons.numbers),
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))

              ),
            ),
          ),
          TextFormField(
            validator: (password){
              if(password!.isEmpty || password.length<6){
                return "Password must be an empty/password length mush be 6";
              }
              else{
                return null;
              }
            },
            decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                helperText: "Must be an special character",
                prefix: Icon(Icons.password_rounded),
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
            ),
          ),
          TextFormField(
            validator: (cpassword){
              if(cpassword!.isEmpty || cpassword==pass){
                return "Password must be same /field must not be same";
              }
              else{
                return null;
              }
            },
            decoration: InputDecoration(
                hintText: "Confirm Password",
                labelText: "Confirm Password",
                helperText: "Must be an special character",
                prefix: Icon(Icons.password_rounded),
                border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
            ),
          ),
          ElevatedButton(onPressed: (){
            final valid=formkey.currentState!.validate();
            if(valid){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login_state()));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Invalid data")));
            }
          }, child: Text("Register"))
        ],),
      ),
    );
  }
}
