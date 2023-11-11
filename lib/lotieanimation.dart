import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(const MaterialApp(home: LottieExample(),));
}
class LottieExample extends StatelessWidget {
  const LottieExample({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Lottie.network("https://lottie.host/4df66e14-5e98-49fe-a60c-cce01af1a7b9/p2aGGoqiqa.json"),
      ),
    );
  }
}
