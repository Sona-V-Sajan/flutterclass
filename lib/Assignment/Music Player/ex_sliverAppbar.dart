import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: Ex_sliverAppbar(),));
}
class Ex_sliverAppbar extends StatelessWidget {
  const Ex_sliverAppbar({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(Icons.menu),
            // title: Text("S L I V E R A P P B A R"),//fixed text
            expandedHeight: 300,
            floating: false,//is true down th app bar will appear immediately so no matter where i are on list and start scrolling down the app bar will appears   immediately then
            // false one when you scroll down to the bottom only when you reach back up fully to the top is the app bar going to show itself
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: const Text("S L I V E R A P P B A R"),//moving bottom to up & up to bottom
            ),
            
          ),
          //sliver items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  // height:400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height:400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height:400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
