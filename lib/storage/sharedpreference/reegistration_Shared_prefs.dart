import 'package:flutter/material.dart';
import 'package:project2/storage/sharedpreference/Login_page_prefs.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Register_Shared extends StatefulWidget {
  const Register_Shared({super.key});

  @override
  State<Register_Shared> createState() => _Register_SharedState();
}

class _Register_SharedState extends State<Register_Shared> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "UserName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwd,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () => storedata(),
                child: const Text("Register Here"))
          ],
        ),
      ),
    );
  }

  void storedata() async {
    String personname = name.text;
    String username = uname.text;
    String password = pwd.text;

    preferences = await SharedPreferences.getInstance();
    preferences.setString('name', personname);
    preferences.setString('uname', username);
    preferences.setString('pass', password);

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login_Shared()));
  }
}
