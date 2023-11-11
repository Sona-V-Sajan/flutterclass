import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: ExpantionEx(),));
}
class ExpantionEx extends StatelessWidget {
  const ExpantionEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("xpanssion Card"),),
      body: const Column(
        children: [
          ExpansionTile(title: Text("Colors"),
          subtitle: Text("Expand to view more"),
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text("Red"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text("Pink"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text("Green"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
              ),
              title: Text("Orange"),
            ),
          ],
          ),

          ExpansionTile(title: Text("Colors"),
            subtitle: Text("Expand to view more"),
            children: [
              Card(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),

              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
                title: Text("Pink"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
                title: Text("Orange"),
              ),
            ],
          ),
        ],
      ),

    );

  }
}
