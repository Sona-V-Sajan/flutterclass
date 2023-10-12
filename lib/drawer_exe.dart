import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: NaviDrawer(),));
}
class NaviDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("My APP"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("assets/img/USA.jpg"))
                  
              ),
                accountName: Text("Sona"), 
                accountEmail: Text("sona123@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: 
                  AssetImage("assets/img/pic9.jpg"),
                ),
              otherAccountsPictures: [
                CircleAvatar(
              backgroundImage:
            AssetImage("assets/img/pic8.jpg"),),
                CircleAvatar(
                  backgroundImage:
                  AssetImage("assets/img/pic7.jpg"),),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("favorite"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.work),
              title: Text("Work"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
