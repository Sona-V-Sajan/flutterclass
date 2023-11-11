import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(const MaterialApp(home: ReadMorless(),));
}
class ReadMorless extends StatelessWidget {
  const ReadMorless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Readmore"),),
      body: const Column(
        children: [
        ReadMoreText(
        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
        trimLines: 2,
        colorClickableText: Colors.pink,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      // ReadMoreText(
      //   'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
      //   trimLines: 2,
      //   colorClickableText: Colors.pink,
      //   trimMode: TrimMode.Line,
      //   trimCollapsedText: 'Show more',
      //   trimExpandedText: 'Show less',
      //   moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      // ),
        ],
      ),
    );
  }
}
