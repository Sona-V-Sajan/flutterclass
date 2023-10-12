import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: StaggeredExample2(),));
}
class StaggeredExample2 extends StatelessWidget {
  var images = [
    "assets/img/pic1.jpg",
    "assets/img/pic2.jpg",
    "assets/img/pic3.jpg",
    "assets/img/pic4.jpg",
    "assets/img/pic5.jpg",
    "assets/img/pic6.jpg",
    "assets/img/pic7.jpg",
    "assets/img/pic8.jpg",
    "assets/img/pic9.jpg",
    "assets/img/pic1.jpg"
  ];
  var cas=[2,3,3,2,2,2,3,1,1,2,1];
  var mas=[1,2,3,2,1,4,3,2,1,3,1];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid view"),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child:StaggeredGrid.count(crossAxisCount: 4,
            children: List.generate(10, (index) =>
                StaggeredGridTile.count(
                  crossAxisCellCount: cas[index],
                  mainAxisCellCount: mas[index],
                  child: Card(
                    color: Colors.primaries[index % Colors.primaries.length],
              child: Image.asset(images[index]),

            ),
                )),
          ),
        ),

      ),

    );
  }
}
