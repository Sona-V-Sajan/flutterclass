// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//   ));
// }
//
// class HomePage extends StatelessWidget {
//   var img = [
//     "assets/img/Mountain.jpg",
//     "assets/img/place 1.jpg",
//     "assets/img/place2.jpg",
//     "assets/img/volcano.jpeg"
//   ];
//   var txt = ["Furious Place", "Luxury  Place", "Favorite Place", "Nature Look"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             // floating: false,
//             //   pinned: true,
//
//             leading: const Icon(
//               Icons.menu,
//               color: Colors.black,
//             ),
//             title: Row(a
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 80),
//                   child: RichText(
//                     text: const TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "Go",
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         TextSpan(
//                           text: "Fast",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 40,
//                               fontWeight: FontWeight
//                                   .bold), // Add the second TextSpan with a different color
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             iconTheme: const IconThemeData(color: Colors.black),
//             backgroundColor: Colors.white,
//             actions: const [
//               CircleAvatar(
//                 minRadius: 10,
//                 maxRadius: 25,
//                 backgroundColor: Colors.blue,
//               )
//             ],
//             bottom: AppBar(
//               backgroundColor: Colors.white,
//               elevation: 0,
//               title: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xFFEDEDED),
//                       offset: Offset(
//                         5.0,
//                         5.0,
//                       ),
//                       blurRadius: 10.0,
//                       spreadRadius: 5.0,
//                     )
//                   ],
//                   shape: BoxShape.rectangle,
//
//                   // borderRadius: BorderRadius.circular(80)
//                 ),
//                 child: const TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Search",
//                     // suffixIcon: Icon(Icons.camera_alt),
//                     suffixIcon: Icon(
//                       Icons.search,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//           const SliverToBoxAdapter(
//             child: Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(18.0),
//                   child: Text(
//                     "Popular Place ",
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 150, top: 18, bottom: 18),
//                   child: Text(
//                     "View All",
//                     style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SliverGrid(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(5.0),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: Stack(children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage(img[index]),
//                                 fit: BoxFit.cover)),
//                       ),
//                       Positioned(
//                           top: 5,
//                           left: 10,
//                           child: ElevatedButton(
//                               onPressed: () {}, child: const Text("7051"))),
//                       Positioned(
//                         bottom: 30,
//                         left: 10,
//                         child: Text(
//                           txt[index],
//                           style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18),
//                         ),
//                       )
//                     ]),
//                   ),
//                 );
//               }, childCount: 4),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, mainAxisExtent: 270)),
//           SliverToBoxAdapter(
//               child: Padding(
//             padding:
//                 const EdgeInsets.only(bottom: 5, right: 10, left: 10, top: 20),
//             child: MaterialButton(
//               minWidth: 170,
//               height: 50,
//               onPressed: () {},
//               child: const Text(
//                 "Explore",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold),
//               ),
//               color: const Color(0xFF27285C),
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(4))),
//             ),
//           ))
//
//           // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
//           //
//           // )
//         ],
//       ),
//     );
//   }
// }
