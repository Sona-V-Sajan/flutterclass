import 'package:flutter/material.dart';
class DataStateles extends StatelessWidget {
  String name;
  String? location;
  int phone;


   DataStateles ({ required this.name, required this.location, required  this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Center(
        child: Column(
          children: [
            Text("Name           :$name",style: TextStyle(fontSize: 10),),
            Text("Location       :$location",style: TextStyle(fontSize: 10),),
            Text("Phone          :$phone",style: TextStyle(fontSize: 10),)
          ],
        ),
      ),

    );
  }
}
