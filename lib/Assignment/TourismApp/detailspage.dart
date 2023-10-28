import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/Assignment/TourismApp/dummypag.dart';
// void main(){
//   runApp(MaterialApp(home: PageDetails(),));
// }
class PageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var id =ModalRoute.of(context)?.settings.arguments;
    var tourismpage = tourism.firstWhere((tourismpage) => tourismpage["id"]== id);
    return Scaffold(
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8,top: 20),
                    child: Text("Most Furious Place & Peaceful \nNatural look ",style: TextStyle(fontSize: 18,color: Colors.black ,fontWeight:FontWeight.bold)),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:
                      20,left: 8),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 27,),
                          Icon(Icons.star,color: Colors.yellow,size: 27,),
                          Icon(Icons.star,color: Colors.yellow,size: 27,),
                          Icon(Icons.star,color: Colors.yellow,size: 27,),
                          Icon(Icons.star,color: Colors.yellow,size: 27,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("4.7 Rating ",style: TextStyle(color: Colors.grey),),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top:5,left: 60
                ),
                child: Container(
                  width: 80,height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(tourismpage["image"],),fit: BoxFit.cover
                    )
                  ),

                ),
              ),


            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("About Places",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(tourismpage["description"],style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.normal,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Special Facilities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),
          Row(
            children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 children: [
               FaIcon(Icons.train,color: Colors.cyan,),
                   Text("Parking",style: TextStyle(
                     color: Colors.cyan,fontWeight: FontWeight.normal,fontSize: 10
                   ),)
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Row(
                  children: [
                    FaIcon(Icons.support_agent_rounded,color: Colors.cyan,),
                    Text("Support",style: TextStyle(
                        color: Colors.cyan,fontWeight: FontWeight.normal,fontSize: 10
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    FaIcon(Icons.wifi,color: Colors.cyan,),
                    Text("Free ifi",style: TextStyle(
                        color: Colors.cyan,fontWeight: FontWeight.normal,fontSize: 10
                    ),)
                  ],
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(tourismpage["image"],),fit: BoxFit.cover)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Special Facilities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 40,
                  height:32,
                  color: Color(0xFF9BC9CD),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Adult\  02",style: TextStyle(fontSize: 10),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  width: 40,
                  height:32,
                  color: Color(0xFF9BC9CD),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Adult\  02",style: TextStyle(fontSize: 10),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Container(
                  width: 40,
                  height:32,
                  color: Color(0xFF9BC9CD),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Adult\  02",style: TextStyle(fontSize: 10),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Container(
                  width: 40,
                  height:32,
                  color: Color(0xFF9BC9CD),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Adult\  02",style: TextStyle(fontSize: 10),),
                  ),
                ),
              ),
            ],
          ),

       Padding(
         padding: const EdgeInsets.only(left: 8.0,right: 8,),
         child: MaterialButton(
           minWidth: 400,
           height: 40,
           color: Colors.blueAccent,
           onPressed: (){} ,child: Text("Explore",style: TextStyle(color: Colors.white),) ,),
       )



        ],
      ),


    );
  }
}
