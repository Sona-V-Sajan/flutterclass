import 'package:flutter/material.dart';
import 'package:project2/storage/sqflite%20ex/login/home.dart';
import 'package:project2/storage/sqflite%20ex/login/signup.dart';
import 'package:project2/storage/sqflite%20ex/login/sql_funct.dart';
class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  var formkey2=GlobalKey<FormState>();
  var email_cnt=TextEditingController();
  var pass_cnt=TextEditingController();

  @override
  Widget build(BuildContext context) {

    void Checknewuser(String emails, String pass) async{
      final id=await SQL_Fun.Checknewuser(emails, pass);
      if(id!=null){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home(uname: id)));
      }
      else if(id ==null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Sigin_up()));
      }
    }
    // void Checkuser(String email, String pass) async{
    //   var datas = await SQL_Fun.Checknewuser(email,pass);
    //   if(datas.isNotEmpty){
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home(uname: datas)));
    //   }
    //   else if(datas.isEmpty){
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Sigin_up()));
    //     print("Login failed");
    //   }
    // }


    return Scaffold(
      body: Form(
        key: formkey2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text ("Login", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const SizedBox(height: 20,),
            Text("Welcome back!Login with your credentials",style: TextStyle(
              fontSize: 15,
              color: Colors.grey[700],
            ),),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller:email_cnt,
                    validator: (emails){
                      if(emails !.isEmpty ||
                          !emails.contains("@") ||
                          !emails.contains(".")){
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
                    controller: pass_cnt,
                    validator: (pswd){
                      if(pswd!.isEmpty || pswd.length<6){
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
                  height: 40,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    final valid =formkey2.currentState!.validate();
                    if(valid){
                      Checknewuser(email_cnt.text,pass_cnt.text);
                    }else{}
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  color: Colors.indigoAccent[400],
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Row(
                  children: [

                    const Padding(
                      padding: EdgeInsets.only(left: 100,top: 30),
                      child: Text("Dont have an account?"),
                    ),
                    InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Sigin_up()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),),
                        ))
                  ],
                )

              ],
            )
          ],
        ),
      ),


    );
  }



}
