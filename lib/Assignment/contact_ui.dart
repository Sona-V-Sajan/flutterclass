import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Contact_ui(),));
}
class Contact_ui extends StatelessWidget {
var title=["John Judah","Bisola Akanbi","Eghosa iku","Andrew Nobeulsi","Annize Dayo","Wakara Zambu","Emaechi Chinedu","Paul Mathew"];
var  num=[9747040373,89279497,702505725,956803452,9188572656,987656234,098743221,786543132];
var  icon=[Icons.account_circle,Icons.account_circle,Icons.account_circle,Icons.account_circle,Icons.account_circle,Icons.account_circle,Icons.account_circle,Icons.account_circle];
var  backgroundColors = [Colors.blue, Colors.pink, Colors.orange, Colors.blue,Colors.green, Colors.red, Colors.yellow, Colors.blue];
var  arrow=[">",">",">",">",">",">",">",">"];

@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SimpleContactList"),
        ),
        body: ListView(children: List.generate(8, (index) =>
            Card(
              child: ListTile(
                title: Text(title[index]),
                subtitle: Text("${num[index]}"),
                leading: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                     child:  Icon(icon[index]),
                      backgroundColor:backgroundColors[index] ,
                      )
                  ],
                ),
                trailing: Text(arrow[index]),
              ),

            )),
    )
    ,
    );

  }
}
