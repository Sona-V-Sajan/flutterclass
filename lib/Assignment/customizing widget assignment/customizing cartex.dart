import 'package:flutter/material.dart';
import 'package:project2/Assignment/customizing%20widget%20assignment/cart_refacctor.dart';
void main(){
  runApp(const MaterialApp(home: CartEx(),));
}
class CartEx extends StatelessWidget {
  const CartEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recomended",style: TextStyle(
        color: Colors.white,fontSize: 20,

      ),) ,backgroundColor: Colors.grey,),
      backgroundColor:Colors.black ,
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      mainAxisExtent: 200),
        children: [
          Custom_Cart(image: const AssetImage("assets/img/bag.png"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.star,
              favourite: Icons.favorite,
              rating: ("rating")),
          Custom_Cart(image: const AssetImage("assets/img/shoe.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.star,
              favourite: Icons.favorite,
              rating: ("rating")),
          Custom_Cart(image: const AssetImage("assets/img/jacket.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.star,
              favourite: Icons.favorite,
              rating: ("rating")),
          Custom_Cart(image: const AssetImage("assets/img/chain.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.star,
              favourite: Icons.favorite,
              rating: ("rating")),
          Custom_Cart(image: const AssetImage("assets/img/jacket.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.star,
              favourite: Icons.favorite,
              rating: ("rating")),

          Custom_Cart(image: const AssetImage("assets/img/chain.jpg"),
              description: "Nike Air max 270"
                  "Ract ng",
              pricing: ("pricing") ,
              stars: Icons.star,
              favourite: Icons.favorite,
              rating: ("rating")),


        ],
      ),
    );
  }
}
