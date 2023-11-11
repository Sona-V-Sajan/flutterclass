import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/practice/register.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String Username = "admin@gmail.com";
    String Password = "abc@123";

    final unameController = TextEditingController();
    final passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(
              "assets/icons/icon.png",
              height: 100,
              width: 100,
            ),
            Text(
                style: GoogleFonts.abhayaLibre(
                    fontWeight: FontWeight.bold, fontSize: 30),
                "Login for User"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: unameController,
                decoration: const InputDecoration(
                  hintText: "UserName",
                  labelText: "UserName",
                  helperText: "User name must be an email",
                  prefix: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: passController,
                decoration: InputDecoration(
                    hintText: "PassWord",
                    labelText: "PassWord",
                    helperText: "Password must be 6 character",
                    prefix: const Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (Username == unameController.text &&
                      Password == passController.text) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          "Invalid username or password or the fields are empty"),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                child: const Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegistrationPage()));
                },
                child: const Text("Not a user?Signup Here!!"))
          ],
        ),
      ),
    );
  }
}
