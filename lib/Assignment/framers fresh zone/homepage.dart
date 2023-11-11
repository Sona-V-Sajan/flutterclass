import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MaterialApp(home: Homepage_Farm(),));
}
class Homepage_Farm extends StatelessWidget {
  const Homepage_Farm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xFF2DB457),
        title: Padding(
          padding: const EdgeInsets.only(top:0),
          child: RichText(text: TextSpan(
              children: [
                TextSpan(
                    children: [
                      TextSpan(
                          text: "Farmers Fresh Zone",
                          style: GoogleFonts.cagliostro(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      )
                    ]
                ),

              ]
          )),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          Row(
            children: [
              const Icon(Icons.location_on_outlined,size: 20,),
              Text("Kochi",style: GoogleFonts.abel(
                  color: Colors.white,fontSize: 15,fontWeight:
              FontWeight.bold
              ),),
              const Icon(Icons.keyboard_arrow_down,size: 20,)
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  //  boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.white,
                  //     blurRadius: 1.0,
                  //     spreadRadius: 2.0,
                  //   )
                  // ],
                  shape: BoxShape.rectangle
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search_outlined,
                      color: Colors.grey,),
                    hintText: "Search for vegetables ,fruits.... "
                ),
              ),
            ),
          ),
        ),
      ),
         body: Column(
           children: [
             SizedBox(
               height: 100,  // Set a specific height for the SliverToBoxAdapter
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Text("OFFERS",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Text("VGETABLES",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Text("FRUITS",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                           color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Text("EXOTIC",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),

                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       width: 200,
                       child: Center(child: Text("FREESH CUTS",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Text("NUTRITION CHARGERS",style: TextStyle(color:Color(0xFF2DB457) ),),
                       )),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Text("PACKED FLAVORS",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                   Transform.scale(
                     scale: 0.7,
                     child: Container(
                       child: Center(child: Text("GOURME SALADS",style: TextStyle(color:Color(0xFF2DB457) ),)),
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(80.00)),
                         shape: BoxShape.rectangle,
                         color: Color(0XFFFCDE7CA),
                         border: Border.all(width: 1,color: Colors.green),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             CarouselSlider(items: [
               Container(
                 decoration: BoxDecoration(
                image: DecorationImage(
                 image: AssetImage("assets/img/farmerzone/slider1.jpg"),fit: BoxFit.fill),
    ),
                 ),
               Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage("assets/img/farmerzone/slider-2.jpeg"),fit: BoxFit.fill),
                 ),
               ),
               Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage("assets/img/farmerzone/slider-3.jpeg"),fit: BoxFit.fill),
                 ),
               ),
               Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage("assets/img/farmerzone/slider-4.jpeg"),fit: BoxFit.fill),
                 ),
               ),

             ], options: CarouselOptions(
               autoPlay: true,
               height: 300,
               autoPlayAnimationDuration: Duration(seconds: 2)
             ))

           ],
         ),
    );
  }
}
