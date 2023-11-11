import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: DemoApp()));
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nested ListView Example')),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (int index) {
                  return Card(
                    color: Colors.blue[index * 100],
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: Text("$index"),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}