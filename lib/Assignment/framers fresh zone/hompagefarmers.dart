import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Farmr_Homepage(),));
}
class Farmr_Homepage extends StatelessWidget {
  var text=["OFFERS","VEGETABLES","FRUITS","EXOTIC","FRESH CUTS","NUTRITION CHARGES","PACKED FLAVORS","GOURMET SALADS"];
  var img=["assets/img/farmerzone/today offer.jpg","assets/img/farmerzone/tomattos.jpg","assets/img/farmerzone/pineapple-1.jpg",
    "assets/img/farmerzone/brocoli.jpg","assets/img/farmerzone/carrot cut.jpg","assets/img/farmerzone/nutritution charge.jpg",
    "assets/img/farmerzone/pepper.jpg","assets/img/farmerzone/food1.jpg"];
  var txt=["Offers","Vegetables","Fruits","Exotic","Fresh Cuts","Nutrition Charges","Packed Flavors","Gourment Salads"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              floating: true,
              backgroundColor: const Color(0xFF2DB457),
              title: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(children: [
                    TextSpan(
                        text: "Farmers Fresh Zone",
                        style: GoogleFonts.cagliostro(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ]),
                ])),
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
            //sliver items
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height:50,
                    child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                       itemBuilder:(context ,index){
                        return Padding(
                            padding: EdgeInsets.only(right: 8,top:8,bottom: 8,left: 2),
                          child: MaterialButton(onPressed: (){},
                          child: Text(text[index],style: TextStyle(color: Colors.green,),),
                            color: Color(0XFFFCDE7CA),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80),
                            ),
                          ),

                        );
                       },
                    ),
                  )
                ],
              )
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  child: CarouselSlider(
                    items: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/farmerzone/slider-4.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/farmerzone/slider-2.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img/farmerzone/slider-3.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                    ),
                  ),
                ),
              ]
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(color: Color(0XFFFCDE7CA),width: 2)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset("assets/img/farmerzone/deliverysame icon.png",height: 20,width: 30,),
                            Text("30 MIN POLICY",style: TextStyle(color: Colors.grey,fontSize: 12),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40,bottom: 5,top: 8),
                        child: Column(
                          children: [
                            Image.asset("assets/img/farmerzone/traceability icon.png",height: 20,width: 30,),
                            Text("TRACEBILITY",style: TextStyle(color: Colors.grey,fontSize: 12))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,bottom: 5,top: 8),
                        child: Column(
                          children: [
                            Image.asset("assets/img/farmerzone/local icon.png",height: 20,width: 30,),
                            Text("LOCAL",style: TextStyle(color: Colors.grey,fontSize: 12)),
                            Text("SOURCING",style: TextStyle(color: Colors.grey,fontSize: 12))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom:10),
                child: Text("Shop By category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Adjust the number of columns as needed
                crossAxisSpacing: 5.0, // Adjust the spacing between columns
                mainAxisSpacing: 5.0, // Adjust the spacing between rows
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  // Replace this with your actual grid item widget
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow:
                     [
                       BoxShadow(
                         color: Colors.white,
                         offset: const Offset(0.0, 0.0),
                         blurRadius: 0.0,
                         spreadRadius: 0.0,
                       )
                     ]
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              child: Image(image: AssetImage(img[index]),height:100,fit: BoxFit.fitWidth,width: double.infinity,)),
                          Text(txt[index],style:TextStyle(

                          ),),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 8, // Replace with the actual number of items
              ),
            ),
            SliverToBoxAdapter(

              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 5,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assetName"))
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
