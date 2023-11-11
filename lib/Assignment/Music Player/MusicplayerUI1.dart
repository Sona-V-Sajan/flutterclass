import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(const MaterialApp(home: MusicPlayer1(),));
}

class MusicPlayer1 extends StatelessWidget {
  const MusicPlayer1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Text("Now playing ",style: TextStyle(
                color: Color(0xfffe4b8ae),fontSize: 25,fontWeight: FontWeight.bold

              ),),
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 350,
                child: Image.asset("assets/img/music01.jpg"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Flowers",style: TextStyle(
                color: Color(0xfffe4b8ae),fontSize: 25,fontWeight: FontWeight.bold
            ),),
          ),
          const Text("Miley Cyrus",style: TextStyle(
            fontWeight: FontWeight.normal,fontSize: 15,
            color:Colors.white
          ),),
          const SizedBox(
            width:300,
              child: Image(image: AssetImage("assets/img/slidermusic.png" ))
          ),
          const ListTile(

            leading: Text("00.03",style: TextStyle(color: Colors.white),),
            trailing:Text("03.21",style: TextStyle(color: Colors.white),),
          ),
          const ListTile(
            leading: Icon(Icons.download,color: Color(0xfffe4b8ae),),
            title:  Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: FaIcon(FontAwesomeIcons.shuffle,color: Colors.white,size: 15,),
                ),
                Icon(Icons.skip_previous,color: Colors.white,size: 25,),
                CircleAvatar(
                    backgroundColor:Color(0xfffe4b8ae) ,
                    child: FaIcon(FontAwesomeIcons.pause,color: Colors.white,),),
                Icon(Icons.skip_next,color: Colors.white,size: 25,),
               Icon(Icons.replay,color: Colors.white,size: 15,)
              ],
            ),
            trailing: Icon(Icons.star,color: Color(0xfffe4b8ae),),
          ),

          const ListTile(
            leading:FaIcon(FontAwesomeIcons.volumeMute,color: Colors.white,size: 20,),
            trailing: FaIcon(FontAwesomeIcons.music,color: Colors.white,size: 20,),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 170),
            child: Row(
              children: [
                Text("Playlist" ,style: TextStyle(color: Color(0xfffe4b8ae)),),
                SizedBox(width: 10,),
                Text("|",style: TextStyle(color: Colors.white),),
                SizedBox(width: 10,),
                Text("Lyrics",style: TextStyle(color: Color(0xfffe4b8ae)),)
              ],
            ),
          ),
        ],
      ),


    );
  }
}
