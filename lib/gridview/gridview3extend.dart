import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Gridview3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 70,
      children:[
        const FaIcon(FontAwesomeIcons.faceFlushed,size: 20,),
        const SizedBox(width: 5,),
        const Expanded(child: Text("data",
        style: TextStyle(
            fontSize: 20,),

        ),



      ),
    );
  }
}
