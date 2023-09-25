import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview_Builder(),));
}
class Listview_Builder extends StatelessWidget {

  var icons=[Icons.ac_unit_rounded,
    Icons.confirmation_num_sharp,
    Icons.add,
    Icons.confirmation_number_sharp,
    Icons.construction,
    Icons.connecting_airports_sharp,
    Icons.construction_outlined,
    Icons.abc,
    Icons.account_circle,
    Icons.abc_sharp];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview.Bulider")),
      body:ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap:true,
        children: [ListView.builder(
          itemCount: 10,
            itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text("data"),
              subtitle: Row(
                children: [
                  Icon(Icons.missed_video_call),
                  Text("My data"),
                ],
              ),
              leading: Icon(icons[index]),
              trailing: Icon(Icons.shopping_cart),
            ),
          );
        }),
        ]
      ),
    );
  }
}
