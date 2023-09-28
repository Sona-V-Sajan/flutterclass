import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ListView_Builder(),
  ));
}
class ListView_Builder extends StatelessWidget {
  var images = [
    "assets/img/bananas.png",
    "assets/img/bibimbap.png",
    "assets/img/donut.png",
    "assets/img/grapes.png",
    "assets/img/hamburger.png",
    "assets/img/orange.png",
    "assets/img/pineapple.png",
    "assets/img/pizza.png",
    "assets/img/ramen.png",
    "assets/img/salad.png"
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
            child: Icon(Icons.insert_link_outlined),
            backgroundColor: Colors.teal,
          ),
          title: Text("Create Call Link "),
          subtitle: Text("Share a link"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Recent"),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context,index){
              return ListTile(
                title: Text("hello"),
                subtitle:
                Row(
                  children: [
                    Icon(Icons.call_missed_rounded,
                      color: Colors.red,),
                    Text("25 Sep 2023,"),
                    Text('10.07'),
                  ],
                ),
                leading: Image.asset(images[index]),
                trailing: Icon(Icons.call_missed_rounded,
                  color: Colors.red,),


              );
          }),

    
        ],
      ),
    );
  }
}
