import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridView1(),));
}

class GridView1 extends StatelessWidget {
  var image = [
    "assets/img/USA.jpg",
    "assets/img/RUSSIA.jpg",
    "assets/img/FRANCE.jpg",
    "assets/img/ENGLAND.jpg",
    "assets/img/CANADA.jpg"
  ];
  var text = ["USA", "LONDON", "ENGLAND", "RUSSIA", "CANADA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Gridview"),),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(5, (index) => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  image: DecorationImage
                    (fit: BoxFit.fill,
                    image:  AssetImage(
                    image[index],
                  ),)
                ),
                
              ),
            ),
            Positioned(
              bottom: 40, // Adjust the top position as needed
              left: 40,
              child: Text(
                text[index],
                style: const TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 25, // Text size
                  fontWeight: FontWeight.bold, // Text weight
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
