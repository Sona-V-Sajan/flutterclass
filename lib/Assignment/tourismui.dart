import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TourismUi()));
}

class TourismUi extends StatelessWidget {
   var img = [
    "assets/img/CANADA.jpg",
    "assets/img/finland.png",
    "assets/img/France 1.jpg",
    "assets/img/India.jpg",
    "assets/img/Italy 1.jpg"
  ];
   var text = ["Germany", "Canada", "Italy", "France", "Europe"];

  TourismUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple));
    

  }
}
