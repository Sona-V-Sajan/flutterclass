import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(MaterialApp(home: MusicPlayer()));
}

class MusicPlayer extends StatelessWidget {
  int selectedIndex=0;

  MusicPlayer({super.key});
  void onButtonPressed(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
        activeColor: const Color(0xfffe4b8ae),
        inactiveColor: Colors.white,
      ),

      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Center(
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
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "Suggested Playlist",
                      style: TextStyle(
                        color: Color(0xfffe4b8ae),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(

            child: SizedBox(
              height: 200,
              child:
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 200,
                        height: 30,
                        child: Image.asset("assets/img/music5.png", fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 200,
                        height: 30,
                        child: Image.asset("assets/img/music3.png", fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 200,
                        height: 30,
                        child: Image.asset("assets/img/music5.png", fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(

            child: SizedBox(

              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "Suggested Playlist",
                        style: TextStyle(
                          color: Color(0xfffe4b8ae),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Image.asset("assets/img/taylorswift.jpg", fit: BoxFit.contain),
                            const Padding(
                              padding: EdgeInsets.only(left: 50,right:
                              300,bottom:10),
                              child: Column(
                                children: [
                                  Text("Hero",style: TextStyle(
                                    color: Color(0xfffe4b8ae),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,

                                  ),),
                                  Text("Taylor Swift",style: TextStyle(color: Colors.white,),)
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(Icons.star_border_outlined, size: 30, color: Color(0xfffe4b8ae)),
                            ),
                            const Icon(Icons.download, size: 30, color: Color(0xfffe4b8ae)),

                          ],
                        ),
                      ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Image.asset("assets/img/unholy.jpg", fit: BoxFit.contain,height: 40,width: 40,),
                          const Padding(
                            padding: EdgeInsets.only(left: 50,right:
                            300,bottom:10),
                            child: Column(
                              children: [
                                Text("Unholy",style: TextStyle(
                                  color: Color(0xfffe4b8ae),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Text("Sam Smith",style: TextStyle(color: Colors.white,),)
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Icon(Icons.star_border_outlined, size: 30, color: Color(0xfffe4b8ae)),
                          ),
                          const Icon(Icons.download, size: 30, color: Color(0xfffe4b8ae)),

                        ],
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Image.asset("assets/img/lift me up.jpg", fit: BoxFit.contain,height: 40,width: 40,),
                          const Padding(
                            padding: EdgeInsets.only(left: 50,right:
                            300,bottom:10),
                            child: Column(
                              children: [
                                Text("Lift Me UP",style: TextStyle(
                                  color: Color(0xfffe4b8ae),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Text("Rihanna",style: TextStyle(color: Colors.white,),)
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Icon(Icons.star_border_outlined, size: 30, color: Color(0xfffe4b8ae)),
                          ),
                          const Icon(Icons.download, size: 30, color: Color(0xfffe4b8ae)),

                        ],
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Image.asset("assets/img/depression.jpg", fit: BoxFit.contain,height: 40,width: 40,),
                          const Padding(
                            padding: EdgeInsets.only(left: 50,right:
                            300,bottom:10),
                            child: Column(
                              children: [
                                Text("Depression",style: TextStyle(
                                  color: Color(0xfffe4b8ae),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Text("Dax",style: TextStyle(color: Colors.white,),)
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Icon(Icons.star_border_outlined, size: 30, color: Color(0xfffe4b8ae)),
                          ),
                          const Icon(Icons.download, size: 30, color: Color(0xfffe4b8ae)),

                        ],
                      ),
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Image.asset("assets/img/depression.jpg", fit: BoxFit.contain,height: 40,width: 40,),
                          const Padding(
                            padding: EdgeInsets.only(left: 50,right:
                            300,bottom:10),
                            child: Column(
                              children: [
                                Text("Depression",style: TextStyle(
                                  color: Color(0xfffe4b8ae),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Text("Dax",style: TextStyle(color: Colors.white,),)
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Icon(Icons.star_border_outlined, size: 30, color: Color(0xfffe4b8ae)),
                          ),
                          const Icon(Icons.download, size: 30, color: Color(0xfffe4b8ae)),

                        ],
                      ),
                    ),

                  ),





                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
