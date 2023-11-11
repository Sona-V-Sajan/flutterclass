import 'package:flutter/material.dart';
import 'package:project2/statefulregistration.dart';
import 'homepage.dart';

class Login_stateful extends StatefulWidget {
  const Login_stateful({super.key});

  @override
  State<Login_stateful> createState() => _Login_statefulState();
}
class _Login_statefulState extends State<Login_stateful> {
  String username = "admin@gmail.com";
  String pass = 'abc123';
  final key1 = GlobalKey<FormState>();
  bool passwordhidden=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key1,
          child: Column(
            children: [
              Image.asset("assets/icons/icon.png",height: 200,width: 150,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username'
                  ),
                  ///here the value entered at text form field will stored at uname
                  validator: (uname){
                    if(uname!.isEmpty || uname != username){
                      return 'username must not be empty/ or invalid';
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscuringCharacter: ".",
                  obscureText:passwordhidden,

                  validator: (password){
                    if(password!.isEmpty || password != pass){
                      return 'Password must not be empty/ password length must be > 6';
                    }else{
                      return null;
                    }
                  },
                  decoration:  InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Password',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(passwordhidden==true){
                            passwordhidden=false;
                          }
                          else{
                            passwordhidden=true;
                          }
                        });
                      }, icon:Icon(passwordhidden==true
                          ?Icons.visibility_off_sharp
                          :Icons.visibility) )),
                ),
              ),
              ElevatedButton(onPressed: () {
                final valid = key1.currentState!.validate();
                if(valid){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Homepage()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Inavlid datas')));
                }
              }, child: const Text("Login")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Reg_stateful()));
                  },
                  child: const Text('Not a User? SignUp Here!!!!'))
            ],
          ),
        ),
      ),
    );
  }
}