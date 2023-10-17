import 'package:flutter/material.dart';
import 'package:project2/media%20query/bigScreen.dart';
import 'package:project2/media%20query/mobilScreen.dart';

void main(){
  runApp(MaterialApp(home: HomPage(),));
}
class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}
class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    var devicewidth=MediaQuery.of(context).size.width;
    if(devicewidth<600){
      return MobileScreen();
    }
    else{

      return BigScreen();

    }

  }
}
