import 'package:flutter/material.dart';

class Login_Db extends StatefulWidget {
  const Login_Db({super.key});

  @override
  State<Login_Db> createState() => _Login_DbState();
}

class _Login_DbState extends State<Login_Db> {
  var uname=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Loginpage"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: uname,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Username"),          ),
          TextFormField( validator: (pass1){
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
          ElevatedButton(onPressed: (){}, child: const Text("Login")),


        ],
      ),
    );
  }
}
