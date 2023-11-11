import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: GridView5(),));
}
class GridView5 extends StatelessWidget {
  const GridView5({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10),
          childrenDelegate: SliverChildBuilderDelegate((context, index) => Container(
            child: const Stack(
              children: [
                Image(image: AssetImage("assets/img/pic2.jpg" ),height: 200,),
                Positioned(
                  bottom: 170,
                    left: 20,
                    child: Text("40\$123",style: TextStyle(color: Colors.black26),)),
                SizedBox(
                  child: Positioned(
                      bottom: 150,
                      left: 20,
                      child: Icon(Icons.price_check,color: Colors.red,)),
                )
              ],
            ),
          ))),
    );
  }
}
