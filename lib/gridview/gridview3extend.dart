import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Gridview3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 70,
      children:[
        FaIcon(FontAwesomeIcons.faceFlushed,size: 20,),
        SizedBox(width: 5,),
        Expanded(child: Text("data",
        style: TextStyle(
            fontSize: 20,),

        ),



      ),
    );
  }
}
