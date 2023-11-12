import 'package:flutter/material.dart';
class Chat_Whatsapp extends StatelessWidget {
var img=["assets/img/pexels-andrea-piacquadio-774909.jpg","assets/img/pic1.jpg","assets/img/pic2.jpg","assets/img/pi3.jpg","assets/img/pic4.jpg","assets/img/pic5.jpg","assets/img/pic6.jpg","assets/img/pic7.jpg","assets/img/pic8.jpg",];
var text=["Ann Vargheese","Steffi Jhonson","Parvahthi","Anju","Athira","Athi","Ashly","Elsa ","Leo"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      ListView.builder(
        itemCount: 9,
        itemBuilder:(context,index){
          return  Card(
            child: ListTile(
              leading: CircleAvatar( backgroundImage: AssetImage(img[index])),
              title: Text(text[index]),
              subtitle: Text("Heello"),
            ),
          );
        } ,


      ),
    );
  }
}
