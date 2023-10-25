import 'package:flutter/material.dart';
import 'package:project2/storage/sharedpreference/home_Shared_prefss.dart';
import 'package:project2/storage/sharedpreference/reegistration_Shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Login_Shared(),
  ));
}

class Login_Shared extends StatefulWidget {
  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {
  final username = TextEditingController();
  final password = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async {
    preferences = await SharedPreferences.getInstance();
    // //?? - if the condition is null fetch the second value
    //     //check whether the user is already logged in, if getBool('userlogin') is null
    //     // which means user is new
    newuser = preferences.getBool("newuser") ?? true;
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeeShared()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "User Name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () => validateandLogin(), child: Text("Login")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Register_Shared()));
                },
                child: Text("Go to Registration")),
          ),
        ],
      ),
    );
  }

  void validateandLogin() async {
    preferences = await SharedPreferences.getInstance()!;
    String storedusername =
        preferences.getString("uname")!; //uname is a key of registration
    String storedpassword = preferences.getString("pass")!;

    String usrname = username.text.trim();
    String pwd = password.text.trim();
    preferences.setBool("newuser", false);
    if (storedusername == usrname && storedpassword == pwd) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeeShared()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid username or password")));
    }
  }
}
