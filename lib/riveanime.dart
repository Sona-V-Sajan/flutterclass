import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
void main(){
  runApp(const MaterialApp(home: RiveAnime(),));
}
class RiveAnime extends StatelessWidget {
  const RiveAnime({super.key});



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


