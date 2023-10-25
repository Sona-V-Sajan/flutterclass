import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Cart_customizing(),));
}
class Cart_customizing extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Recomended",style: TextStyle(
          color: Colors.white,fontSize: 20,
        ),),
        leading: CircleAvatar(
               minRadius: 5,
               maxRadius: 5,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back, color:Colors.black ,)),
        actions: [
          CircleAvatar(
            maxRadius: 10,
              minRadius: 10,
              backgroundColor: Colors.black,
              child: Icon(Icons.sync_alt ,color: Colors.white,))],
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Cart_customizing(

        )
      ],),
    );
  }
}
