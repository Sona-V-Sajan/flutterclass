import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: ListView_Separated(),));
}
class ListView_Separated extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview.Separator"),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return const Card(
              child: FaIcon(FontAwesomeIcons.facebook),

            );
          },
          separatorBuilder: (context,index){
            if(index % 4 == 0){
              return const Card(
              child: Text("data"),color: Colors.red,);
            }
            else{
              return const SizedBox();
            }

          },
          itemCount: (15)
      ),

    );
  }
}
