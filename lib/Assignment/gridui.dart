import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  var icons = [
    Icons.home,
    Icons.ring_volume,
    Icons.camera,
    Icons.star,
    Icons.accessibility,
    Icons.cake,
    Icons.phone,
    Icons.mail,
    Icons.add,
    Icons.sim_card,
    Icons.volume_mute,
    Icons.pages_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 2,
        ),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.primaries[index % Colors.primaries.length],
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        icons[index],
                        size: 60.0,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 35,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(fontSize: 11 ,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Shaker",
                              style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
