import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Orientation_screen(),));
}
class Orientation_screen extends StatelessWidget {
  var orientation ,height,width;

  Orientation_screen({super.key});
  @override
  Widget build(BuildContext context) {
    //getting the orientation of the app
    orientation =MediaQuery.of(context).orientation;
    //size of the window
    //size of MediaQuery.of(context).size;
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientation Media Query"),
        backgroundColor: Colors.green,
      ),
      //checking the orientation
      body: orientation == Orientation.portrait?Container(
        color: Colors.blue,
        height: height/2,
        width: width/4,
      )
          :Container(
        color: Colors.red,
        height: height/2,
        width: width/2,

      )
      ,

    );
  }
}
