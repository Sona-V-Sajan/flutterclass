import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridView2(),));
}
class GridView2 extends StatelessWidget {
  var text=["food1","food2","food3","food4","food5"];
var img=["assets/img/bananas.png","assets/img/bibimbap.png","assets/img/donut.png","assets/img/grapes.png","assets/img/hamburger.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,

      children: List.generate(5, (index) => Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color: Colors.primaries[index%Colors.primaries.length]),
        child: Column(
          children: [
            Image.asset(img[index],height: 100,),
            const Text("Food1",
            style: TextStyle(fontSize: 20),),
            const Text("120\$"
            ,style: TextStyle(
                fontSize: 10
              ),),

          ],
        ),
      )),),
    );
  }
}

