import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Customer_Review extends StatelessWidget {
  AssetImage? img;
  String? name;
  String? subtitle;
  IconData?icons;
  String? des;

  
  Customer_Review({
    required this.img,
    required this.name,
    required this.subtitle,
    required this.icons,
    required this.des,

    
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0XFFFE9E9E9))
      ),
      child: Column(
        children: [
          ListTile(
            splashColor:Colors.white,
            selectedColor: Colors.white,
            selectedTileColor:Colors.white,
            leading:ClipRRect(
              borderRadius:BorderRadius.circular(360),
              child: Image(image: img!,fit:BoxFit.cover,),
            ),
            title: Text(name!,style: GoogleFonts.roboto(color: Color(0xFF2DB457),fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text(subtitle!,style: TextStyle(color: Colors.grey[750],fontSize: 14),),
            trailing:Icon(icons!),
          ),

          SizedBox(
            height: 20,
          ),
          Text(des!,
            textAlign:TextAlign.justify,
            style: GoogleFonts.roboto(
            fontSize: 15,fontWeight: FontWeight.bold,
            color:Colors.grey[700],
          ),)


        ],
      ),
    );
  }
}
