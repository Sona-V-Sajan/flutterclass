import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/Assignment/framers%20fresh%20zone/Custsomer_Review.dart';
import 'package:project2/Assignment/framers%20fresh%20zone/box_refactor.dart';
import 'package:project2/Assignment/framers%20fresh%20zone/vegetables_refactor.dart';

void main() {
  runApp(MaterialApp(
    home: Farmr_Homepage(),
  ));
}

class Farmr_Homepage extends StatelessWidget {
  var text = [
    "OFFERS",
    "VEGETABLES",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
    "NUTRITION CHARGES",
    "PACKED FLAVORS",
    "GOURMET SALADS"
  ];
  var img = [
    "assets/img/farmerzone/today offer.jpg",
    "assets/img/farmerzone/tomattos.jpg",
    "assets/img/farmerzone/pineapple-1.jpg",
    "assets/img/farmerzone/brocoli.jpg",
    "assets/img/farmerzone/carrot cut.jpg",
    "assets/img/farmerzone/nutritution charge.jpg",
    "assets/img/farmerzone/pepper.jpg",
    "assets/img/farmerzone/food1.jpg"
  ];
  var txt = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Charges",
    "Packed Flavors",
    "Gourment Salads"
  ];
  var pic = [
    "assets/img/farmerzone/ladisfing1.jpg",
    "assets/img/farmerzone/AMRGRNthas 1.jpg",
    "assets/img/farmerzone/pineapple.jpg",
    "assets/img/farmerzone/saladcucu1.jpg",
    "assets/img/farmerzone/button mushroom.jpg",
    "assets/img/farmerzone/KIWI.jpg",
    "assets/img/farmerzone/cauliflower.jpg",
    "assets/img/farmerzone/orange.jpeg",
    "assets/img/farmerzone/onion.jpg",
    "assets/img/farmerzone/apple.jpg",
    "assets/img/farmerzone/aviyal.jpeg",
    "assets/img/farmerzone/sambar.jpeg",
    "assets/img/farmerzone/tttt.jpg",
    "assets/img/farmerzone/Yellow_cucumber.jpg",
  ];
  var name = [
    "Ladies Finger",
    "Amaranthus",
    "Pineapple",
    "Salad Cucumber",
    "Mushroom",
    "Kiwi",
    "Cauliflower",
    "Orange",
    "Onion",
    "Green Apple",
    "Aviyal cut mini pack",
    "Sambar cut mini pack",
    "Tapioca",
    "LadiesFinger",
    "Yellow Cucumber"
  ];
  var offer = [
    "11%",
    "",
    "8%",
    "5%",
    "14%",
    "",
    "",
    "7%",
    "8%",
    "",
    "",
    "",
    "",
    ""
  ];
  var image = [
    "assets/img/farmerzone/cntbldpresure.jpg",
    "assets/img/farmerzone/brocoli shou.jpg",
    "assets/img/farmerzone/fiv tips.jpg"
  ];
  var des = [
    "Control Blood \n pressure,the ri",
    "Five reason why \n Broccoli shou ",
    "Five tips that\n prevent you fro"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black.withOpacity(0.6),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            //Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                    "assets/img/farmerzone/farmers_fresh_zone_logo_small_green.png")),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box_outlined,
                  color: Colors.grey,
                ),
                label: "Account"),
          ],
        ),
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
                    const Icon(
                      Icons.location_on_outlined,
                      size: 20,
                    ),
                    Text(
                      "Kochi",
                      style: GoogleFonts.abel(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                    )
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
                        shape: BoxShape.rectangle),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                          ),
                          hintText: "Search for vegetables ,fruits.... "),
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
                  height: 50,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: 8, top: 8, bottom: 8, left: 2),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            text[index],
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          color: Color(0XFFFCDE7CA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  child: CarouselSlider(
                    items: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/img/farmerzone/slider-4.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/img/farmerzone/slider-2.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/img/farmerzone/slider-3.jpeg"),
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
              ]),
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
                      border: Border.all(color: Color(0XFFFCDE7CA), width: 2)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/img/farmerzone/deliverysame icon.png",
                              height: 20,
                              width: 30,
                            ),
                            Text(
                              "30 MIN POLICY",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, bottom: 5, top: 8),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/img/farmerzone/traceability icon.png",
                              height: 20,
                              width: 30,
                            ),
                            Text("TRACEBILITY",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12))
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 80, bottom: 5, top: 8),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/img/farmerzone/local icon.png",
                              height: 20,
                              width: 30,
                            ),
                            Text("LOCAL",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text("SOURCING",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12))
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
                padding: const EdgeInsets.only(left: 8.0, bottom: 10),
                child: Text(
                  "Shop By category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
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
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFE9E9E9),
                            offset: Offset(1.0, 4.0),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image(
                                  image: AssetImage(img[index]),
                                  height: 80,
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5, top: 8),
                              child: Text(
                                txt[index],
                                style: TextStyle(),
                              ),
                            ),
                          ],
                        ),
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
                    color: Colors.grey[200],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/img/farmerzone/img1.jpeg"))),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 10),
                        child: Text(
                          "Best Selling Products",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Custom_Container(
                  image: AssetImage(pic[index]),
                  name: name[index],
                  price: "21 ",
                  kilo: "0.30 kg",
                  offers: offer[index],
                );
              }, childCount: 14),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0xFF2DB457),
                  height: 35,
                  minWidth: double.infinity,
                  child: Text(
                    "View More",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.grey[200],
                ),
                Container(
                  width: double.infinity,
                  child: Image(
                      image:
                          AssetImage("assets/img/farmerzone/certificate.jpeg")),
                ),
                Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Our Blog Post",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            )),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 260,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Box_Container(
                            img: AssetImage(
                              image[index],
                            ),
                            des: (des[index]),
                            cont: "a year ago",
                            icon: Icons.arrow_forward);
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "View More",
                          style: TextStyle(
                              color: Color(0xFF2DB457),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    width: double.infinity,
                    height: 5,
                    color: Colors.grey[200],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 10),
                        child: Text(
                          "What Our Cutomr Say?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )),

                ],
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border:Border.all(color:Color(0XFFFE9E9E9))
                  ),
                  child: CarouselSlider(
                    items: [
                      Customer_Review(
                        img: AssetImage("assets/img/farmerzone/customer Prince.jpg"),
                        name: "Prince", subtitle: "Online Digital Marketing Business",icons:Icons.notes,
                        des: """I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save by ordering online. The best part is, I get all of this at a really  reasonable price!""",
                      ),
                      Customer_Review(
                        img: AssetImage("assets/img/farmerzone/customerNeethu.jpg"),
                        name: "Neethu Vipin", subtitle: "Clerk NavalBase Kochi",icons:Icons.notes,
                        des: """I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save by ordering online. The best part is, I get all of this at a really  reasonable price!""",
                      ),
                      Customer_Review(
                        img: AssetImage("assets/img/farmerzone/cutomer-2.jpg"),
                        name: "Hrishikesh Nair", subtitle: "CEO Infopark",icons:Icons.notes,
                        des: """I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save by ordering online. The best part is, I get all of this at a really  reasonable price!""",
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                    ),

                  ),
                ),

              ),
            ]),),

            SliverToBoxAdapter(
              child:Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 3,
                    color: Colors.grey[200],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("This Kochi-based farm-to-fork online "
                              "marketplace is connecting farmers directly "
                              "to customers.", textAlign:TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 16,fontWeight:FontWeight.normal,
                              color:Colors.black,),
                          ),
                        ),
                        Row(
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/img/farmerzone/news_1.png",height:45,width: 85),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/img/farmerzone/news_2.png",height:38,width: 80),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/img/farmerzone/news_3.png",height:40,width: 80,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/img/farmerzone/news_4.png",height:40,width: 80),
                            ),

                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 10,
                          color: Colors.grey[200],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Get to know us",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("About Us  |  Our Farmers  | Blog ",style:TextStyle(color: Colors.grey[600],fontSize: 15),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "UseeFul Links",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Privacy Policy |  Return &Refund Policy | \nTerms & Condition",style:TextStyle(color: Colors.grey[600],fontSize: 15),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Row(
                            children: [
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: FaIcon(FontAwesomeIcons.twitter,color: Colors.grey,),
                             ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: FaIcon(FontAwesomeIcons.youtube,color: Colors.grey,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: FaIcon(FontAwesomeIcons.facebookF,color: Colors.grey,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: FaIcon(FontAwesomeIcons.instagram,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 80,
                          color: Color(0xFF2DB457),
                          child: Center(
                            child: Text("Copyright © 2023 Farmers Fresh Zone .\n"
                                "   All Rights Reserved.V 2.40.51", textAlign:TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 16,fontWeight:FontWeight.normal,
                                color:Colors.white,),
                            ),
                          ),
                        ),




                    ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
