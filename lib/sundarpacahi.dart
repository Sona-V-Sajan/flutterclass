import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Navdrawer1(),));
}
class Navdrawer1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(),
          Container(
            width: double.infinity,
            height: 350,
            child: Image(image: AssetImage("assets/img/sundar3.jpg"),
              fit: BoxFit.fill,
            ),

          ),
          Positioned(
            bottom: 150,
              left: 50,
              child: Text("Sundar Pichai",style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),)),
           Positioned(
             bottom: 30,
             left: 30,
             right:30,
             child: Text("' Pichai began his career as a materials engineer. Following a short stint at the management"
                 " consulting firm McKinsey & Co., Pichai joined Google in 2004,[9] where he led the product management "
                 "and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS,"
                 " as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of "
                 "other applications such as Gmail and Google Maps.'",
                 textAlign: TextAlign.justify,
             ),
           ),


        ],
      )

    );
  }
}
