import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MusicPlayerUI(),));
}

class MusicPlayerUI extends StatelessWidget {
  var image=["assets/img/music5.png",
            "assets/img/music5.png",
              "assets/img/music5.png"];

  MusicPlayerUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 60,),
          const Center(
            child: Text(
              "Musify",
              style: TextStyle(
                color: Color(0xfffe4b8ae),
                fontSize: 35,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Suggested Playlist",
              style: TextStyle(
                color: Color(0xfffe4b8ae),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
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
                      decoration: const BoxDecoration(
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
