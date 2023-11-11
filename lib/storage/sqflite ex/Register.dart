import 'package:flutter/material.dart';
import 'package:project2/storage/sqflite%20ex/login.dart';
import 'package:project2/storage/sqflite%20ex/sql_db.dart';

void main(){
  runApp(MaterialApp(home: Register_Sql(),));
}

class Register_Sql extends StatelessWidget {

  var formkey =GlobalKey<FormState>();
  var fname=TextEditingController();
  var uname=TextEditingController();
  var pass=TextEditingController();

  Register_Sql({super.key});

  @override
  Widget build(BuildContext context) {
    void Addnewuser(String name, String username, String password) async{
      var id = await SQL_Db.AddNewUser(name,username,password);
      if(id !=null){//if registration is success goto loginpage
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context)=>const Login_Db()));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registration not Successfull")));
      }

    }

    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Registration ")),),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: fname,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "FullName"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (pass1){
                if(pass1!.isEmpty || pass1.length <6){
                  return "Password must should be greater than 6";
                }
                else{
                  return null;
                }
              },
              textInputAction: TextInputAction.next,
              obscureText: true,
              obscuringCharacter: "*",
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () async{
              final valid1 =formkey.currentState!.validate();
              if(valid1){
                Addnewuser(fname.text,uname.text,pass.text);
                // var data =await SQL_Db.userFound(uname.text,pass.text);
                //
                // if(data.isNotEmpty){
                //   ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(content: Text("User already exist")));
                // }
                // else{
                //   Addnewuser(fname.text,uname.text,pass.text);
                // }
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(action:
                SnackBarAction(label: "UNDO", onPressed: (){}),
                content: const Text("Invalid username/password"),));
              }
            }, child: const Text("Register")),
          )
        ],
      ),
    );
  }


}
