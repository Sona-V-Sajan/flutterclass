import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project2/ficard.dart';

void main() {
  runApp(MaterialApp(
    home: Car_Slider(),
  ));
}

class Car_Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: CarouselSlider(items: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/background.jpg")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/img/CANADA.jpg")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/USA.jpg")),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/RUSSIA.jpg")),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/ENGLAND.jpg")),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FiCard()));
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/FRANCE.jpg")),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/Mountain.jpg")),
            ),
          ),
        ),
      ], options: CarouselOptions(
          autoPlay: true,
        viewportFraction: .4,
        height: 200,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
        autoPlayAnimationDuration: Duration(seconds: 2)

      )),
    );
  }
}
