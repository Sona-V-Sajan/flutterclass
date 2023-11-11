import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
runApp(const MaterialApp(home:ProfileDrawer(),));

}


class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
        color:Colors.black,
      ),),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CircleAvatar(
                backgroundImage: AssetImage("assets/img/pic8.jpg"),
                radius: 50,
              ),
                const Center(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(FontAwesomeIcons.twitter,color: Colors.white,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(FontAwesomeIcons.linkedin,color: Colors.white,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(FontAwesomeIcons.github,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),
            const Center(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text("Jerin",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom:8),
                  child: Text("@webrror",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                ),
                Text("MobileApp Development ",style: TextStyle(fontWeight:FontWeight.w100,fontSize: 18),)
              ],),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.privacy_tip),
                          title: Text("Privacy"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.history),
                          title: Text("Purchase History"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.help),
                          title: Text("Help and Support"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.insert_invitation),
                          title: Text("Invitation"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ],

                    ),
                  ),
                ),
              ),
            ),




          ],
        ),
      ),

    );
  }
}


