import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ListView() ,));
}

class ListView4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.custom(
          childrenDelegate:
          SliverChildListDelegate([
            Card(
              child: Icon(Icons.account_circle)
          ),
            Card(
                child: Icon(Icons.account_circle)
            ),
            Card(
                child: Icon(Icons.account_circle)
            ),
            Card(
                child: Icon(Icons.account_circle)
            ),
            Card(
                child: Icon(Icons.account_circle)
            ),
          ])
          // SliverChildBuilderDelegate((context, index) => Card(
          //   child: Icon(Icons.account_circle),
          // ),
          //   childCount: 10),
    ),
    );
  }
}