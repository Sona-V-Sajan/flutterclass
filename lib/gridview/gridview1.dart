import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: GridView1(),));
}
class GridView1 extends StatelessWidget {
  const GridView1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView1"),),
      body: GridView(
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 150
        // ),
        //this is show how items will placed in cross axis
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: List.generate(15, (index) => Card(
        color: Colors.primaries[index%Colors.primaries.length],
        child: const Icon(Icons.adb),
      )),),
    );
  }
}
