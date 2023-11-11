import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/passing%20data%20between%20screen/using%20navigator/dummydata.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // id from previous page
    var id = ModalRoute.of(context)?.settings.arguments;
    // products list oro map um product il varum , previous page le tap cheith cheitha id , e id k
    // matching aya id products list il undonu check cheyyum , undenkil aa single map product il store cheyum
    var product = products.firstWhere((product) => product['id'] == id);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(product['image'],height: 200,width: 200,),
            Text(product['name'],style: GoogleFonts.fahkwang(fontSize: 40),),
            Text('${product['price']}',style: const TextStyle(fontSize: 30),),
            Text('${product['rating']}',style: const TextStyle(fontSize: 20)),
            Text(product['description'],style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}