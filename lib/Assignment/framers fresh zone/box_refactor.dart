import 'package:flutter/material.dart';

class Box_Container extends StatelessWidget {
 AssetImage? img;
 String? des;
 String? cont;
 IconData? icon;

 Box_Container({
   required this.img,
   required this.des,
   required this.cont,
   required this.icon
});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all( Radius.circular(10)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0XFFFE9E9E9),width: 3),
              ),
              width:200,
              height: 250,
              child: Column(
                children: [
                  Image(image: img!,height:140,fit: BoxFit.cover,width: 400,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0,top: 8,bottom: 8),
                    child: Text(des!,style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15 ,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(cont!,style: TextStyle(fontSize: 15,color: Colors.grey[600]),)),
                        Padding(
                          padding: const EdgeInsets.only(left: 68.0),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(icon!,color: Color(0xFF2DB457),size: 20,)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
          ),


        ],
      ),
    );
  }
}
