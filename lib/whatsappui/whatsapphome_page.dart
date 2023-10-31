import 'package:flutter/material.dart';
import 'package:project2/Listview/listview4.dart';
import 'package:project2/Listview/listview_constructor.dart';
import 'package:project2/listview2.dart';
void main(){
  runApp(MaterialApp(home: HomeWhatsapp(),));
}
class HomeWhatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("WhatsApp"),
        actions: [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(
            width: 30,
          ),
          const Icon(Icons.search),
          const SizedBox(
            width: 20,
          ),
          PopupMenuButton(itemBuilder: (context){
            return[
              const PopupMenuItem(child: Text("New group"),),
              const PopupMenuItem(child: Text("New broadcast"),),
              const PopupMenuItem(child: Text("Linked devices"),),
              const PopupMenuItem(child: Text("Starred messages"),),
              const PopupMenuItem(child: Text("Payment"),),
              const PopupMenuItem(child: Text("Setting"),),
            ];
          },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height), child: TabBar(
          tabs: [
            Tab(
              text: "Chats",
            ),
            Tab(
              text:"Updates",
            )






      ])),
      ),
      body: TabBarView(children: [
        ListView1(),
        ListView4()
      ]),


      //   bottom: PreferredSize(
      //       preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      //       child: Container(
      //         child: TabBar(tabs: [
      //           Tab(
      //             text: "chats",
      //             child: const CircleAvatar(
      //               minRadius: 15,
      //               maxRadius: 13,
      //               backgroundColor: Colors.green,
      //               // child:Text(" 12"),
      //             ),
      //           ),
      //           const Tab(
      //             text: "Updates",
      //           ),
      //           const Tab(
      //             text: "Calls",
      //           ),
      //
      //         ]),
      //       )),
      // ),
      // body: TabBarView(children: [
      //   ListView1(),
      //   ListView2(),
      //   ListView4()
      //
      // ],
      // ),
      //


    );
  }
}
