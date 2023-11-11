import 'package:flutter/material.dart';
import 'package:project2/storage/sqflite%20ex/login/login.dart';
import 'package:project2/storage/sqflite%20ex/login/signup.dart';

void main() {
  runApp(const MaterialApp(home: Login_Sigin(),));
}

class Login_Sigin extends StatelessWidget {
  const Login_Sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Hello There!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const SizedBox(height: 30,),
                Text("Automatic identity verification which enables you to verify your identity",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(child: Image(image: AssetImage("assets/img/loginimage.png"))
                ),
              ],
            ),
            const SizedBox(height: 250), // Adjust the height to control the space between the buttons
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login_page()));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed:(){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>const Sigin_up()));
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
          ],
        ),
      ),
    );
  }
}
