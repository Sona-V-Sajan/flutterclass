import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HotelUi()));
}

class HotelUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Container(
            width: double.infinity,
            height:350,
            child: Image(
              image: AssetImage("assets/img/hotelui.png"),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 240,
            left: 30,
            child: Text(
              "Crowne Plaza",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
           top: 270,
            left: 30,
            child: Text("Kochi, Kerala",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 30,
            child: Container(
              width:120,
              height: 30,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(20)),
                color: Colors.white38,
              ),
            ),
          ),
          Positioned(
              left:35,
              top: 300,
              child: Center(
                child: Text("8.4/85 reviews" ,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white)
                  ,),
              )),
          Positioned(
            top: 300,
              right: 30,
              child: Icon(Icons.favorite_border,color: Colors.white,)),


          Positioned(
            left: 30,
            top: 360,
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.purple),
                Icon(Icons.star, color: Colors.purple),
                Icon(Icons.star, color: Colors.purple),
                Icon(Icons.star, color: Colors.purple),
                Icon(Icons.star_border_outlined, color: Colors.grey),
              ],
            ),
          ),
          Positioned(
            top: 370,
            right: 20,
            child: Text("\$200", style: TextStyle(color: Colors.purple,
                fontWeight: FontWeight.bold,fontSize: 20)),
          ),
          Positioned(
            top: 385,
              left: 30,
              child: Icon(Icons.location_on,color: Colors.grey,)),
          Positioned(
            top: 390,
              left: 50,
              child: Text("8 km to LuluMall",

                  style: TextStyle(color: Colors.grey,
                fontSize: 15
              ))),

          Positioned(
              top: 390,
              right: 10,
              child: Text("/per night",style: TextStyle(color: Colors.grey,fontSize: 15),)),
          Positioned(
            top: 430,
            left: 68,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text(' Book Now',style: TextStyle(fontWeight:
              FontWeight.bold),),
              style: TextButton.styleFrom(
               backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(310, 50)
              ),
            ),
          ),

          Positioned(
            bottom:350,
              left: 20,
              child: Text("Ramada Plaza Palm Grove",
                style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20)),),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: Text(
                "'Replete with waterfalls, hizionale comfortable resorts and homestays,'"
                "'Wayanad in Kerala is famous for its spice plantan and wide Walking through'"
                "'the strawing spice plantations trekking to the pre-histone caves and experiencing'"
                " 'sort holiday are one of the many things you can do to get a taste of'"
                "'Wayanad Wayanad is best known for "
                    "the widife reserves Wayanad die reserve which is "
                "hoe to an exquiste variety off and fauna Wayanad wildlife reserve is an integral part of"
                " the Nig Biosphere reserve peacefully located amicat the serene hils of Weslam Ghats Weysred "
                "homes a wide variety of wife like ephalopards, and bears Wayanad is a perfect send des from the cities of"
                " South Inda f taking med trip hom Bungalone, you will drive through three national parks"
                " Nogarhole Bandipur and Mudumalai Marickap is a dainty bounique family holiday resurt offering "
                "magnificent and sustainable lotus at the'",
              textAlign: TextAlign.justify,

                ),
          ),

           Positioned(
             bottom: 30,
             left: 50,
             child:
                 Icon(Icons.search,color: Colors.purple,),
             ),

          Positioned(
            bottom: 15,
              left: 50,
              child: Text("Search")),
          Positioned(
            bottom: 30,
              left: 200,
              child: Icon(Icons.favorite,color: Colors.grey,)),
          Positioned(
              bottom: 15,
              left: 200,
              child: Text("favorite")),

          Positioned(
            bottom: 30,
              right: 30,
              child: Icon(Icons.settings,color: Colors.grey,)),
          Positioned(
            bottom: 15,
              right: 30,

              child: Text("Settings"))

          




        ],


      ),
    );
  }
}
