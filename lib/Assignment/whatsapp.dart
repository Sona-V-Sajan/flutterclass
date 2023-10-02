import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: WhatsappProfile(),));
}
class WhatsappProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Drawer(
          child: Icon(Icons.menu, color: Colors.white,),
          backgroundColor: Colors.blue,
        ),
        title: Center(
          child: Text("Profile"),
        ),
        actions: [

          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("Data")),
              PopupMenuItem(child: Text("Settings"))
            ];
          })
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.black,
            ),
            Container(
              height: 400,
              color: Colors.white,

            ),

            Container(
              height: 200,
              child: Image(image: AssetImage("assets/img/Mountain.jpg"),
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              top: 180,
                left: 30,
                child: CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  child: Icon(Icons.message
                  ),
                  backgroundColor: Colors.red,
                ),
            ),
             Positioned(
               top: 160,
               left: 300,
               child: CircleAvatar(
                 maxRadius: 60,
                 minRadius: 50,
                 backgroundImage: AssetImage("assets/img/pic8.jpg"),
               ),
             ),
            
            
            Positioned(
              top: 180,
                right: 30,
                child: CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  child: Icon(Icons.add),
                )),
            Positioned(
              top:300,
                left: 300,
                child: Text("David Beckham",style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.normal),),
            ),
            Positioned(
              top: 350,
                left: 310,
                child: Text("model/super star",style: TextStyle(fontSize: 15,color: Colors.blue),)),
            Positioned(
              bottom: 10,
                right: 30,
                child: CircleAvatar(
                  child: Icon(Icons.edit),
                  backgroundColor: Colors.grey,
                )),



          ],
        ),
      ),
    );
  }
    
  }
