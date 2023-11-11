import 'package:flutter/material.dart';
class Home extends StatelessWidget {
final uname;
const Home({Key? key,required this.uname}):super(key:key);
  @override
  Widget build(BuildContext context) {
    var name =uname[0]["name"];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset("assets/img/icon welcome.png"),
            Text("Welcome $name"
              ,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
