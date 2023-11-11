import 'package:flutter/material.dart';
import 'package:project2/storage/sharedpreference/login_page_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeeShared extends StatefulWidget {
  const HomeeShared({super.key});

  @override
  State<HomeeShared> createState() => _HomeeSharedState();
}

class _HomeeSharedState extends State<HomeeShared> {
  late SharedPreferences preferences;
  String? username;

  @override
  void initState() {
    fetchUser();
  }

  void fetchUser() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("uname");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Welcome $username"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  preferences.setBool("newuser", true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Login_Shared()));
                },
                child: const Text("Logout"))
          ],
        ),
      ),
    );
  }
}
