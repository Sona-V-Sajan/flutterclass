import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: Cart_customizing(),));
}
class Cart_customizing extends StatelessWidget {
  const Cart_customizing({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text("Recomended",style: TextStyle(
          color: Colors.white,fontSize: 20,
        ),),
        leading: const CircleAvatar(
               minRadius: 5,
               maxRadius: 5,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back, color:Colors.black ,)),
        actions: const [
          CircleAvatar(
            maxRadius: 10,
              minRadius: 10,
              backgroundColor: Colors.black,
              child: Icon(Icons.sync_alt ,color: Colors.white,))],
      ),
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: const [
        Cart_customizing(

        )
      ],),
    );
  }
}
