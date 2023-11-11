import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(const MaterialApp(home: Stageredgrid(),));
}
class Stageredgrid extends StatelessWidget {
  const Stageredgrid({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        const Text("Staggered Grid view"),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing:10,
          crossAxisSpacing: 10,
          children: const [
            StaggeredGridTile .count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.yellow,
                  child: Center(
                    child: Icon(Icons.account_box),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Card(
                  color: Colors.red,
                  child: Center(
                    child: Icon(Icons.e_mobiledata),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 6,
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Icon(Icons.e_mobiledata),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Icon(Icons.e_mobiledata),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
