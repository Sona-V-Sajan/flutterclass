import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/Assignment/TourismApp/homePage2.dart';
import 'package:project2/Assignment/TourismApp/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});
  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final unames = TextEditingController();
  final passw = TextEditingController();
  bool passwordhidden = true;
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState(){
    check_user_already_login();
    super.initState();
  }
  void check_user_already_login()  async{
    preferences = await SharedPreferences.getInstance();
    newuser = preferences.getBool("newuser") ?? true;
    if(newuser == false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>TourismHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(55.0),
              child: Image(
                image: AssetImage("assets/img/tourism.png"),
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 10.0, right: 10, bottom: 10),
              child: TextFormField(
                controller: unames,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: passw,
                obscuringCharacter: "*",
                obscureText: passwordhidden,
                validator: (password) {
                  if (password!.isEmpty || password != passw) {
                    return 'Password must not be empty/ password length must be > 6';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passwordhidden == true) {
                              passwordhidden = false;
                            } else {
                              passwordhidden = true;
                            }
                          });
                        },
                        icon: Icon(passwordhidden == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () => validandLogin(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Text(
              "I don't have an account?",
              style: GoogleFonts.amarante(
                fontSize: 18,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Register_page(),));
                },
                child: Text("Register",
                    style: GoogleFonts.amarante(
                        fontSize: 20, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
  void validandLogin() async {
    preferences = await SharedPreferences.getInstance();
    String storeuname = preferences.getString("uname") ?? '';
    String storepass = preferences.getString("pass") ?? '';

    String username = unames.text.trim();
    String password = passw.text.trim();

    if (storeuname.isNotEmpty &&
        storepass.isNotEmpty &&
        storeuname == username &&
        storepass == password) {
      Navigator.pushReplacement( // Use pushReplacement to remove Login_page from the stack
        context,
        MaterialPageRoute(builder: (context) => TourismHome()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid username and password")));
    }
  }

}




