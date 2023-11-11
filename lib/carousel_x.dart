import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project2/ficard.dart';

void main() {
  runApp(const MaterialApp(
    home: Car_Slider(),
  ));
}

class Car_Slider extends StatelessWidget {
  const Car_Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: CarouselSlider(items: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/background.jpg")),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/img/CANADA.jpg")),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/USA.jpg")),
          ),
        ),

        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/RUSSIA.jpg")),
          ),
        ),

        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img/ENGLAND.jpg")),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FiCard()));
          },
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/FRANCE.jpg")),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            decoration: const BoxDecoration(
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
        autoPlayAnimationDuration: const Duration(seconds: 2)

      )),
    );
  }
}
