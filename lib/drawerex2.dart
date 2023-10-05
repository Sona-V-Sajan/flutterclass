import 'package:flutter/material.dart';
import 'package:project2/sundarpacahi.dart';

void main(){
  runApp(MaterialApp(home: DrawerExample(),));
}
class  DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar"),),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
                  Colors.red,
                  Colors.redAccent,
                  Colors.red,
                ]),
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/img/sundar1.png"),

                    ),
                title: Text("Sundar Pachai"),
              ),
                SizedBox(
                  height: 50,
                  width: 40,
                ),
                ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Navdrawer1()));
                  },
                ),
              ListTile(
                leading: Icon(Icons.leak_add_sharp),
                title: Text("Leads"),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("Client"),
              ),
              ListTile(
                leading: Icon(Icons.pattern),
                title: Text("Patients"),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions),
                title: Text("Subscriptions"),
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payment"),
              ),
              ListTile(
                leading: Icon(Icons.verified_user_sharp),
                title: Text("Userss"),
              ),
              ListTile(
                leading: Icon(Icons.library_add),
                title: Text("Library"),
              ),
              SizedBox(
                height: 50,
                width: 100,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text("Log Out"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent[200],
                shadowColor: Colors.redAccent[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),)

            ],
          ),
        ),
      ),
    );

  }
}
