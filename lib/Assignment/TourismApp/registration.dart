import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/Assignment/TourismApp/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Register_page extends StatefulWidget {
  const Register_page({super.key});

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pass = TextEditingController();
  final cpass = TextEditingController();
  bool passwordhidden = true;
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10),
              child: Image(
                image: AssetImage("assets/img/tourism.png"),
                width: double.infinity,
              ),
            ),
            Center(
              child: Text(
                "Welcome to Maldives ",
                style: GoogleFonts.amarante(
                    fontSize: 20, color: Color(0xFFFF3300)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: pass,
                obscuringCharacter: "*",
                obscureText: passwordhidden,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6 || password != pass.text) {
                    return 'Password must not be empty / Password length must be > 6 / Passwords do not match';
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
              child: TextFormField(
                controller: cpass,
                obscuringCharacter: "*",
                obscureText: passwordhidden,
                validator: (cpassword) {
                  if (cpassword!.isEmpty || cpassword != cpass) {
                    return 'Password must not be empty/ password length must be > 6';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Confirm Password",
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
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: () => storedata(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void storedata() async {
    String pname = name.text;
    String email = uname.text;
    String pwd = pass.text;
    String cpwd = cpass.text;

    if (pwd == cpwd) {
      preferences = await SharedPreferences.getInstance();
      preferences.setString("name", pname);
      preferences.setString("uname", email);
      preferences.setString("pass", pwd);

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login_page()));
    } else {
      // Passwords don't match, show an error message or handle it accordingly
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid username and password")));
      // showDialog(
      //   context: context,
      //   builder: (BuildContext context) {
      //     return AlertDialog(
      //       title: Text('Passwords do not match'),
      //       actions: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //           child: Text('OK'),
      //         ),
      //       ],
      //     );
      //   },
      // );
    }
  }

}
