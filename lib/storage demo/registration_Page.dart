import 'package:flutter/material.dart';
import 'package:project2/storage/login_Shared.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: RegistrationPage(),));
}
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;
  @override
  void initState(){
    storedata();
    super.initState();
  }
  void storedata() async{
    String personname=name.text;
    String username=uname.text;
    String password =pass.text;

     preferences =await SharedPreferences.getInstance()!;
    preferences.setString("name", personname);
    preferences.setString("uname", username);
    preferences.setString("pass", password
    );
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_Shared()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title:Text("Registration"),
      ),
      body: Column(
        children: [
          TextField(
            controller: name,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
          ),
          TextField(
            controller: uname,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
          ),
          TextField(
            controller: pass,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }


}
