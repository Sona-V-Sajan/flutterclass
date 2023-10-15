import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: SliverEx(),));
}
class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            title: const Text("Sliver Example"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),

                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    suffixIcon: Icon(Icons.camera_alt),
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate:
          SliverChildBuilderDelegate((context, index) => const Card(
            child: ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Home"),
              subtitle: Text("990765434"),
            ),
          ),
          ),
      ),
    ],)
    );
  }
}
