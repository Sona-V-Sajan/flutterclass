import 'package:flutter/material.dart';
import 'package:project2/storage/registration_Page.dart';
import 'package:project2/storage/home_Shared.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: Login_Shared(),));
}
class Login_Shared extends StatefulWidget {
  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {
  final userName=TextEditingController();
  final passWord=TextEditingController();
  late bool newUser ;
//check already login or not
  late SharedPreferences prefs;
//used to later
  @override
  void initState(){
    check_user_already_login();
    super.initState();
  }
  void check_user_already_login() async {
    prefs = await SharedPreferences.getInstance();
    //if value of firstlogin is null is true
    newUser =prefs.getBool("firstlogin")?? true;
    if(newUser == false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_Shared()));

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(controller: userName,
            decoration: InputDecoration(
              hintText: "UserName",
              border: OutlineInputBorder(),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(controller: passWord,
              decoration: InputDecoration(
                hintText: "PassWord",
                border: OutlineInputBorder(),
              ),),
          ),
          ElevatedButton(onPressed: () async {
            prefs=await SharedPreferences.getInstance();
            String uname = userName.text.trim();//trim is used to remove starting and ending space
            String pass =passWord.text.trim();
            if(uname != ""&& pass != ""){
              prefs.setString("username", uname);
              prefs.setString("password", pass);
              prefs.setBool("firstlogin", false);//first login fal usr already logged in
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home_Shared()));

            }
          }, child: Text("Login")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (
                ){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RegistrationPage()));
            }, child: Text("Register")),
          )

        ],
      ),
    );
  }
}
