import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home:ListView4() ,));
}

class ListView4 extends StatelessWidget {
  const ListView4({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.custom(
          childrenDelegate:
          SliverChildListDelegate([
            const Card(
              child: Icon(Icons.account_circle)
          ),
            const Card(
                child: Icon(Icons.account_circle)
            ),
            const Card(
                child: Icon(Icons.account_circle)
            ),
            const Card(
                child: Icon(Icons.account_circle)
            ),
            const Card(
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
