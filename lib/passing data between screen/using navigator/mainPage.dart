import 'package:flutter/material.dart';
import 'package:project2/passing%20data%20between%20screen/using%20navigator/detailsPage.dart';
import 'package:project2/passing%20data%20between%20screen/using%20navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: ProductPage(),
    routes: {
      "details": (context) => ProductDetails(),
      //enganne ethu page ine venamenklum vilika
    },

  ));
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 1, crossAxisSpacing: 1),
        //products=list name in dummy data
        children: products
            .map((e) => InkWell(
                  onTap: () => Navigator.pushNamed(context, "details",
                      arguments: e["id"]),
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(e["image"])))),
                        Text(e["name"]),
                        Text("${e["price"]}\$"),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),

      //list view
      // body: ListView(
      //   padding: EdgeInsets.all(15),
      //   //products listile data
      //   children: products.map((e) => ListTile(
      //     leading: Container(
      //       height: 200,
      //         width: 200,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             fit:BoxFit.contain,
      //             image:AssetImage(e["image"]),),)
      //         ),
      //
      //     title: Text(e["name"]),
      //     subtitle: Text("${e["price"]}\$"),
      //
      //
      //   )).toList(),
      //   //productd - list name
      // ),
    );
  }
}
