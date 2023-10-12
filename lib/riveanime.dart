import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
void main(){
  runApp(MaterialApp(home: RiveAnime(),));
}
class RiveAnime extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
            "assets/animation/5931-11523-interactive-pendulum-spacing.riv"),
      ),

    );
  }
}


