import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:project2/Assignment/gridview1.dart';
import 'package:project2/Listview/listview_constructor.dart';
import 'package:project2/ficard.dart';
void main(){
  runApp(const MaterialApp(
    home: BottomBar(),
  ));
}
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});


  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index=0;
  var screens=[
    const FiCard(),
    GridView1(),
    const ListView1(),
    GridView1(),
    const ListView1(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
          TabItem(icon: Icons.account_box),
        ],
        initialActiveIndex: 1,
        onTap: (tapindex){
         setState(() {
          index=tapindex;//here index value changed according to each tap
        });
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //
      //   type: BottomNavigationBarType.shifting,
      //     backgroundColor: Colors.green,
      //     selectedItemColor: Colors.yellow,
      //     currentIndex: index,
      //     onTap: (tapindex){
      //     setState(() {
      //       index=tapindex;//here index value changed according to each tap
      //     });
      //     },
      //     items: [
      //   BottomNavigationBarItem(
      //       backgroundColor:Colors.brown,
      //       icon: Icon(Icons.home),label: "Home"),
      //   BottomNavigationBarItem(
      //        backgroundColor: Colors.green,
      //       icon: Icon(Icons.add_box_rounded),label: "Reels"),
      //   BottomNavigationBarItem(
      //       backgroundColor: Colors.red,
      //       icon: Icon(Icons.park_rounded),label: "Notify"),
      //   BottomNavigationBarItem(
      //       backgroundColor: Colors.blue,
      //       icon: Icon(Icons.account_box),label: "Profile")
      // ]),
      body: screens[index],
    );
  }
}
