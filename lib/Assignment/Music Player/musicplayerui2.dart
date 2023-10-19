import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MusicPlayerUI(),));
}

class MusicPlayerUI extends StatelessWidget {
  var image=["assets/img/music5.png",
            "assets/img/music5.png",
              "assets/img/music5.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Center(
            child: Text(
              "Musify",
              style: TextStyle(
                color: Color(0xFFFE4B8AE),
                fontSize: 35,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Suggested Playlist",
              style: TextStyle(
                color: Color(0xFFFE4B8AE),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 100,  // Set a specific height for your ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 4,),
                  child: Container(
                      width: 500.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),

                      child: Image(image: AssetImage(image[index])),
                    ),
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
