import 'package:flutter/material.dart';
import 'package:project2/storage/sqflite%20ex/login/login.dart';
import 'package:project2/storage/sqflite%20ex/login/sql_funct.dart';

class Sigin_up extends StatefulWidget {
  const Sigin_up({super.key});

  @override
  State<Sigin_up> createState() => _Sigin_upState();
}
class _Sigin_upState extends State<Sigin_up> {
  var formKey1 =GlobalKey<FormState>();
  var name=TextEditingController();
  var email_id=TextEditingController();
  var pass=TextEditingController();
  var con_pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    void Addnewuser(String name,String email, String password) async{
      var id = await SQL_Fun.Addnewuser(name,email,password);
      if(id != null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login_page()));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Registration is not sucessfully"))
        );
      }


    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text ("Sign up", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox(height: 20,),
              Text("Create an Account,Its free",style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),),
              const SizedBox(
                height: 20,
              ),
             Column(
               children: [
                 TextFormField(
                   controller: name,
                   textInputAction: TextInputAction.next,
                   decoration: const InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                     prefixIcon: Icon(Icons.account_circle_rounded),
                     labelText: "Name",
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     controller:email_id,
                     validator: (email){
                       if(email !.isEmpty ||
                           !email.contains("@") ||
                          !email.contains(".")){
                         return "Enter valid email";
                       }else{
                         return null;
                       }
                     },
                     textInputAction: TextInputAction.next,
                     decoration: const InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                         prefixIcon: Icon(Icons.email_rounded),
                        labelText: "Email",
                     ),
                   ),
                 ),
                 const SizedBox(
                  height: 10,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     controller: pass,
                     validator: (passw){
                       if(passw!.isEmpty || passw.length<6){
                         return "Password must should b greater than 6";
                       }
                       else{
                         return null;
                       }
                     },
                     textInputAction: TextInputAction.next,
                     obscuringCharacter: "*",
                     obscureText: true,
                     decoration: const InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                         prefixIcon: Icon(Icons.lock_clock_rounded),
                         labelText: "Password"
                     ),
                   ),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     validator: (cpass){
                       if(cpass!.isEmpty || cpass.length<6){
                         return "Password must should b greater than 6";
                       }
                       else if(pass.text !=con_pass.text){
                         return "Password not matched";
                       }
                       else{
                         return null;
                       }
                     },
                     controller: con_pass,
                     obscureText: true,
                     obscuringCharacter: "*",
                     decoration: const InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                         prefixIcon: Icon(Icons.remove_red_eye_sharp),
                         labelText: "Confirm password"
                     ),
                   ),
                 ),
                 const SizedBox(
                   height: 40,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: MaterialButton(
                     minWidth: double.infinity,
                     height: 60,
                     onPressed:()async{
                       final valid =formKey1.currentState!.validate();
                       if(valid){
                         Addnewuser(name.text,email_id.text,pass.text);
                       }
                       else{
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(action:SnackBarAction(label: "UNDO", onPressed: (){}) ,
                             content:const Text("Invalid username/password")));
                       }
                       Navigator.push((context), MaterialPageRoute(builder: (context)=>const Login_page()));
                     },
                     color: Colors.redAccent,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(40),
                     ),
                     child: const Text(
                       "Sign UP",
                       style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 16,
                       ),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap:(){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_page()));
                   },
                   child: Row(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(left: 100,top: 30),
                         child: Text("Already have an account "),
                       ),
                       const Padding(
                         padding: EdgeInsets.only(top: 30),
                         child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
                       )
                     ],
                   ),
                 )

               ],
             )
    ]),
        ),
      ),
    );
  }


}
