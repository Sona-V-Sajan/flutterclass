import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(
  theme:ThemeData(primarySwatch: Colors.teal),
  home: const ListView1(),));

}
class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView1"),
      ),
      body: ListView(
        children:  const [
          Card(child: ListTile(
            leading:Icon(Icons.people_alt_rounded),
            title: Text("Product1"),
          subtitle: Row(
            children: [Icon(Icons.ac_unit_rounded),
              Text("This is a sample subtitle"),
            ],
          ),
          trailing: Column(
            children: [
              Text('10.11'),
            ],
          ),
          )),
          Card(child: ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pexels-andrea-piacquadio-774909.jpg"))
            ,title: Text("Product2"),
            subtitle: Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 6,
                  backgroundColor: Colors.teal,child: Text("2"),)
              ],
            ),
          )),
          Card(child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/img/pic1.jpg"))
             , title:Text("Product3"),
              subtitle:Row(
                children: [Icon(Icons.icecream_rounded),
                  Text("This is a sample subtitle"),
                ],
              ),
            //   trailing: Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     Text('10.11'),
            //     CircleAvatar(
            //       minRadius:6,
            //       maxRadius: ,
            //       backgroundColor: Colors.teal,child: Text("2"),)
            //   ],
            // ),
          )),

          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic2.jpg"),)
              ,title:Text("Product4"),
              subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("2"),)
              ],
            ),
          )),

          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic3.jpg"),)
              ,title:Text("Product5"),
           subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("2"),)
              ],
            ),)),
          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic4.jpg"),)
              ,title:Text("Product6"),
           subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("2"),)
              ],
            ),)),// Corrected to "Product9"
          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic5.jpg"),)
              ,title:Text("Product7"),
           subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("7"),)
              ],
            ),)),
          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic6.jpg"),)
              ,title:Text("Product8"),
           subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("2"),)
              ],
            ),)),
          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic7.jpg"),)
              ,title:Text("Product9"),
           subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("2"),)
              ],
            ),)),
          Card(child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/img/pic8.jpg"),)
              ,title:Text("Product10"),
           subtitle:Text("This is a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius:6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,child: Text("5"),)
              ],
            ),)),

        ],
      ),
    );
  }
}
