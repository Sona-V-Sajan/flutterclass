import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MusicPlayer(),
  ));
}

class MusicPlayer extends StatelessWidget {
  var image=["assets/img/music1.png",
              "assets/img/music2.png",
              "assets/img/music3.png",
              "assets/img/music4.png",
              "assets/img/music5.png",
              "assets/img/muic6.png"

            ];
  var  text=("Top 50","Pop Music","LOFI REMIXES","M+IKE","CAR MUSIC","TIKTOKSONGS");
  int selectedIndex = 0;

  void onButtonPressed(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.black,
        barItems: <BarItem>[
          BarItem(title: "Home", icon: Icons.home),
          BarItem(title: "Playlist", icon: Icons.music_note),
          BarItem(title: "Favorite", icon: Icons.favorite),
          BarItem(title: "Add more", icon: Icons.more_horiz),
        ],
        selectedIndex: selectedIndex,
        onButtonPressed: onButtonPressed,
        activeColor: const Color(0xFFFE4B8AE),
        inactiveColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFE4B8AE)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFE4B8AE)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFE4B8AE)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Color(0xFFFE4B8AE)),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFFE4B8AE),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    "Playlists",
                    style: TextStyle(
                        color: Color(0xFFFE4B8AE),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),


             GridView.count(crossAxisCount: 2,
             crossAxisSpacing: 4,
             mainAxisSpacing: 4,
             shrinkWrap: true,
               children: List.generate( 6, (index) {
                 return Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     children: [
                       Container(
                         height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           image: DecorationImage (
                               image: AssetImage(image[index]),fit: BoxFit.cover,)
                         ),

                          // Center(child: Text("Top %50"
                          //  ,style: TextStyle(fontSize: 10,
                          //      fontWeight: FontWeight.normal,
                          //      color: Colors.white),)) ,


                       ),
                     ],
                   ),
                 );
               },),
             )
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function()) {}
}
