import 'package:flutter/material.dart';
import 'package:project2/Assignment/customizing%20widget%20assignment/refactoring_in_cart.dart';
void main(){
  runApp(MaterialApp(home: CartEx(),));
}
class CartEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recomended",style: TextStyle(
        color: Colors.white,fontSize: 20,

      ),) ,backgroundColor: Colors.grey,),
      backgroundColor:Colors.black ,
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,),
        children: [
          Custom_Cart(image: AssetImage("assets/img/bag.png"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.safety_check,
              icons: Icons.ice_skating,
              rating: ("rating")),
          Custom_Cart(image: AssetImage("assets/img/shoe.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.safety_check,
              icons: Icons.ice_skating,
              rating: ("rating")),
          Custom_Cart(image: AssetImage("assets/img/jacket.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.safety_check,
              icons: Icons.ice_skating,
              rating: ("rating")),
          Custom_Cart(image: AssetImage("assets/img/chain.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.safety_check,
              icons: Icons.ice_skating,
              rating: ("rating")),
          Custom_Cart(image: AssetImage("assets/img/jacket.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.safety_check,
              icons: Icons.ice_skating,
              rating: ("rating")),

          Custom_Cart(image: AssetImage("assets/img/chain.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.safety_check,
              icons: Icons.ice_skating,
              rating: ("rating")),


        ],
      ),
    );
  }
}
