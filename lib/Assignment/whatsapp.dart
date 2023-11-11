import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(home: WhatsappProfile(),));
}
class WhatsappProfile extends StatelessWidget {
  const WhatsappProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: const Drawer(
          backgroundColor: Colors.blue,
          child: Icon(Icons.menu, color: Colors.white,),
        ),
        title: const Center(
          child: Text("Profile"),
        ),
        actions: [

          PopupMenuButton(itemBuilder: (context){
            return[
              const PopupMenuItem(child: Text("Data")),
              const PopupMenuItem(child: Text("Settings"))
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

            const SizedBox(
              height: 200,
              child: Image(image: AssetImage("assets/img/Mountain.jpg"),
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            const Positioned(
              top: 180,
                left: 30,
                child: CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.message
                  ),
                ),
            ),
             const Positioned(
               top: 160,
               left: 300,
               child: CircleAvatar(
                 maxRadius: 60,
                 minRadius: 50,
                 backgroundImage: AssetImage("assets/img/pic8.jpg"),
               ),
             ),
            
            
            const Positioned(
              top: 180,
                right: 30,
                child: CircleAvatar(
                  minRadius: 20,
                  maxRadius: 30,
                  child: Icon(Icons.add),
                )),
            const Positioned(
              top:300,
                left: 300,
                child: Text("David Beckham",style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.normal),),
            ),
            const Positioned(
              top: 350,
                left: 310,
                child: Text("model/super star",style: TextStyle(fontSize: 15,color: Colors.blue),)),
            const Positioned(
              bottom: 10,
                right: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.edit),
                )),



          ],
        ),
      ),
    );
  }
    
  }

