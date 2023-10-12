import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home:Bottomsheet_Ex()));
}
class Bottomsheet_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
            child: Image.asset("assets/img/background.jpg")),
      ),
    );
  }
  void showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Share Via"),
          Divider(),
          ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),title: Text("WhatsApp"),),
          ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pink,),title: Text("Instagaram"),)
          
        ],
      );
    });
  }
}
