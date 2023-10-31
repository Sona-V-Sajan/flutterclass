import 'package:flutter/material.dart';

class Login_Tourism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: Image(image: AssetImage("assets/img/tourism.png")),
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Log In"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  textStyle: const TextStyle(
                      fontSize: 14, fontStyle: FontStyle.normal),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  minimumSize: const Size(150, 50)),
            ),
          ),
          const SizedBox(height: 40, child: Text("-or-")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              minWidth: 160,
              height: 60,
              onPressed: () {},
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "Registration ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.app_registration,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              minWidth: 160,
              height: 60,
              onPressed: () {},
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Login With Facebook ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              color: Colors.blueAccent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              minWidth: 160,
              height: 60,
              onPressed: () {},
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Login With Google ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.transfer_within_a_station,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              color: Colors.red,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ),
        ],
      ),
    );
  }
}
