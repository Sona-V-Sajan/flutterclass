import 'package:flutter/material.dart';

class Custom_Container extends StatelessWidget {
  AssetImage? image;
  String? name;
  String? price;
  String? kilo;
  String? offers;

  Custom_Container(
      {
        required this.image,
    required this.name,
    required this.price,
    required this.kilo,
    this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
             border: Border.all(color: Color(0XFFFE9E9E9),width: 2)
            ),
            width: 40,
            child: Column(
              children: [
          
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: image!,height: 100,fit: BoxFit.contain,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(name!,style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.normal
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0,bottom: 1),
                        child: Text(price!,style:TextStyle(
                          fontWeight: FontWeight.normal,fontSize: 15
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text(offers!,style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(kilo!,style:TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: MaterialButton(onPressed: (){},
                        child: Text("ADD",style: TextStyle(
                          color:Colors.white
                        ),),
                        color: Color(0xFF2DB457),
                      ),
                    )
          
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}
