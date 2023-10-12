import 'package:flutter/material.dart';

class Datastatefull extends StatefulWidget {
  String name;
  String? location;
  int phone;
  Datastatefull({super.key, required this.name, this.location, required this.phone});

  @override
  State<Datastatefull> createState() => _DatastatefullState();
}

class _DatastatefullState extends State<Datastatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name        :${widget.name}",style: TextStyle(fontSize: 20),),
            Text("Location    :${widget.location}",style: TextStyle(fontSize: 12),),
            Text("Phone       :${widget.phone}",style: TextStyle(fontSize: 10),)
          ],
        ),
      ),
    );
  }
}
