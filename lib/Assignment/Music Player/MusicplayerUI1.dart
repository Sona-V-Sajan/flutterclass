import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: MusicPlayer1(),));
}

class MusicPlayer1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Text("Now playing ",style: TextStyle(
                color: Color(0xFFFE4B8AE),fontSize: 25,fontWeight: FontWeight.bold

              ),),
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 350,
                child: Image.asset("assets/img/music01.jpg"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Flowers",style: TextStyle(
                color: Color(0xFFFE4B8AE),fontSize: 25,fontWeight: FontWeight.bold
            ),),
          ),
          Text("Miley Cyrus",style: TextStyle(
            fontWeight: FontWeight.normal,fontSize: 15,
            color:Colors.white
          ),),
          Container(
            width:300,
              child: Image(image: AssetImage("assets/img/slidermusic.png" ))
          ),
          ListTile(

            leading: Text("00.03",style: TextStyle(color: Colors.white),),
            trailing:Text("03.21",style: TextStyle(color: Colors.white),),
          ),
          ListTile(
            leading: Icon(Icons.download,color: Color(0xFFFE4B8AE),),
            title:  Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: FaIcon(FontAwesomeIcons.shuffle,color: Colors.white,size: 15,),
                ),
                Icon(Icons.skip_previous,color: Colors.white,size: 25,),
                CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.pause,color: Colors.white,),
                backgroundColor:Color(0xFFFE4B8AE) ,),
                Icon(Icons.skip_next,color: Colors.white,size: 25,),
               Icon(Icons.replay,color: Colors.white,size: 15,)
              ],
            ),
            trailing: Icon(Icons.star,color: Color(0xFFFE4B8AE),),
          ),

          ListTile(
            leading:FaIcon(FontAwesomeIcons.volumeMute,color: Colors.white,size: 20,),
            trailing: FaIcon(FontAwesomeIcons.music,color: Colors.white,size: 20,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Row(
              children: [
                Text("Playlist" ,style: TextStyle(color: Color(0xFFFE4B8AE)),),
                SizedBox(width: 10,),
                Text("|",style: TextStyle(color: Colors.white),),
                SizedBox(width: 10,),
                Text("Lyrics",style: TextStyle(color: Color(0xFFFE4B8AE)),)
              ],
            ),
          ),
        ],
      ),


    );
  }
}
