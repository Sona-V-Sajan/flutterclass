import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var title = [
    "Data1",
    "Data2",
    "Data3",
    "Data4",
    "Data5",
    "Data6",
    "Data7",
    "Data8",
    "Data9",
    "Data10"
  ];
  var subti = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  var images = [
    "assets/img/pic1.jpg",
    "assets/img/pic2.jpg",
    "assets/img/pic3.jpg",
    "assets/img/pic4.jpg",
    "assets/img/pic5.jpg",
    "assets/img/pic6.jpg",
    "assets/img/pic7.jpg",
    "assets/img/pic8.jpg",
    "assets/img/pic9.jpg",
    "assets/img/pic1.jpg"
  ];
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
      appBar: AppBar(
        title: Text("Listview2"),
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                    selectedTileColor: Colors.deepOrange,
                    selectedColor: Colors.deepOrange,
                    title: Text(title[index]),
                    subtitle: Text("${subti[index]}"),
                    leading:Image.asset(images[index],fit: BoxFit.contain,height: 100,width: 50,),
                    trailing: Icon(icons[index]),
                  ),
                )),
      ),
    );
  }
}
