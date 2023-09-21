
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: RegistrationPage(),));
}
class RegistrationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Registration Page"),
     ),
     body: Column(children: [
       SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 15.0),
           child: TextField(decoration: InputDecoration(
             hintText:"Name",
             labelText: "Name",
             helperText: "Must be an letters",
             prefix: Icon(Icons.account_circle),
             border:OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(14.0))) ) ,
           ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(bottom: 18.0),
         child: TextField(
           decoration: InputDecoration(
             hintText: "Email",
             labelText: "Email",
             helperText: "Must be an 6 character and .com",
             prefix: Icon(Icons.email),
               border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
           ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(bottom: 18.0),
         child: TextField(
           decoration: InputDecoration(
               hintText: "Phone Number",
               labelText: "Phone Number",
               helperText: "Must be an number",
               prefix: Icon(Icons.numbers),
               border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
           ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(bottom: 18.0),
         child: TextField( decoration: InputDecoration(
             hintText: "PassWord",
             labelText: "PassWord",
             helperText: "Must be an number and special characters",
             prefix: Icon(Icons.password),
             border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
         ),),
       ),
       Padding(
         padding: const EdgeInsets.only(bottom: 18.0),
         child: TextField(decoration: InputDecoration(
             hintText: "Confirm PassWord",
             labelText: "Confirm PassWord",
             helperText: "Must be an number and special characters",
             prefix: Icon(Icons.password),
             border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
         ),),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: ElevatedButton(onPressed: (){}, child: Text("Register")),
       )

     ],),
   );
  }

}