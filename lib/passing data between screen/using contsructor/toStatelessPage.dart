import 'package:flutter/material.dart';
class DataStateles extends StatelessWidget {
  String name;
  String? location;
  int phone;


   DataStateles ({super.key,  required this.name, required this.location, required  this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Center(
        child: Column(
          children: [
            Text("Name           :$name",style: const TextStyle(fontSize: 10),),
            Text("Location       :$location",style: const TextStyle(fontSize: 10),),
            Text("Phone          :$phone",style: const TextStyle(fontSize: 10),)
          ],
        ),
      ),

    );
  }
}
