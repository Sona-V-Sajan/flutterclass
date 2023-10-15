import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MusicPlayer(),
  ));
}

class MusicPlayer extends StatelessWidget {
  var gradient =[
    const LinearGradient(
                   colors: [Colors.greenAccent, Colors.blueAccent, Colors.blueGrey],
                    begin: Alignment.topLeft, end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.purpleAccent, Colors.purple, Colors.black26],
        begin: Alignment.topLeft, end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.purple, Colors.black, Colors.purple],
        begin: Alignment.topLeft, end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.grey, Colors.redAccent, Colors.black26],
        begin: Alignment.topLeft, end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.greenAccent, Colors.blueAccent, Colors.blueGrey],
        begin: Alignment.topLeft, end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.purpleAccent, Colors.purple, Colors.black26],
        begin: Alignment.topLeft, end: Alignment.bottomRight),
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
                       height: 5,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         gradient:  LinearGradient(
                             colors: [Colors.greenAccent, Colors.blueAccent, Colors.blueGrey],
                             begin: Alignment.topLeft, end: Alignment.bottomRight),
                       ),
                       child: Icon(Icons.line_weight_sharp,color: Colors.white,weight: 15,size: 10,),
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
    );
  }

  void setState(Null Function()) {}
}
