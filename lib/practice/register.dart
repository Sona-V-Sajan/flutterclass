
import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: RegistrationPage(),));
}
class RegistrationPage extends StatelessWidget{
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("Registration Page"),
     ),
     body: Column(children: [
       const SingleChildScrollView(
         child: Padding(
           padding: EdgeInsets.symmetric(vertical: 15.0),
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
             prefix: const Icon(Icons.email),
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
               prefix: const Icon(Icons.numbers),
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
             prefix: const Icon(Icons.password),
             border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
         ),),
       ),
       Padding(
         padding: const EdgeInsets.only(bottom: 18.0),
         child: TextField(decoration: InputDecoration(
             hintText: "Confirm PassWord",
             labelText: "Confirm PassWord",
             helperText: "Must be an number and special characters",
             prefix: const Icon(Icons.password),
             border:OutlineInputBorder(borderRadius:BorderRadius.circular(15.0))
         ),),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: ElevatedButton(onPressed: (){}, child: const Text("Register")),
       )

     ],),
   );
  }

}