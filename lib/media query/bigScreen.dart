import 'package:flutter/material.dart';

class BigScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(title: Text("Desktop"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(8.0),
                    child: AspectRatio(aspectRatio: 16/4,
                    child: Container(
                      color: Colors.deepPurple[400],
                    ),),
                  ),
                  Expanded(
                      child: ListView.builder(itemCount: 8,
                          itemBuilder: (context,index){
                        return Padding(padding: EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        );
                          },
                      ),
                  )
                ],
              ),
            ),
            //second column


            Padding(padding: EdgeInsets.all(8.0)

              ,child: Container(

                width: 200,
                color: Colors.deepPurple[300],
              ),)
          ],
        ),
      ),
      //second column

    );
  }
}
