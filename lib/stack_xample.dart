import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: StackEx(),));
}

class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Ex"),),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 500,
                height: 580,
              color: Colors.green,
            ),

            Positioned(
              top:.260,
              left: 220,
              bottom: 200,
              child: Container(
                width: 300,
                height: 360,
                color: Colors.red,
              ),
            ),

            Container(
              width: 400,
              height: 460,
              color: Colors.yellow,
            ),

          ],
        ),
      ),
    );
  }
}
