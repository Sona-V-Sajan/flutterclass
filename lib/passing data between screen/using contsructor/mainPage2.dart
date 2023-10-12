import 'package:flutter/material.dart';
import 'package:project2/passing%20data%20between%20screen/using%20contsructor/toStaefullPage.dart';
import 'package:project2/passing%20data%20between%20screen/using%20contsructor/toStatelessPage.dart';

void main() {
  runApp(MaterialApp(home: MainPage2(),));
}

class MainPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text("Data Passing"),),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: () =>
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                         DataStateles(
                             name: "Luminar",
                             location: "Kakkanad",
                             phone:86355242

                         ))), child: Text("To Stateless")),
            ),
            ElevatedButton(onPressed: () =>
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Datastatefull(
                        name: "Luminar",
                        location: "Kakkanad",
                        phone:86355242


                    ))),
                child: Text("To StateFul"))
          ],

        ),
      ),
    );
  }
}
