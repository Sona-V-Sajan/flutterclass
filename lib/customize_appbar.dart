import 'package:flutter/material.dart';
import 'package:project2/listview2.dart';
import 'package:project2/Listview/listview_constructor.dart';
import 'package:project2/loginPage.dart';
import 'package:project2/practice/register.dart';
void main(){
  runApp(MaterialApp(home: CustomizeAppbar(),));
}

class CustomizeAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Whatsapp"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 15,
            ),

            Icon(Icons.search_off),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("New BroadCast")),
                PopupMenuItem(child: Text("New Group")),

              ];
            }),

          ],
        bottom: PreferredSize(preferredSize:Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.group),
                    ),
                    Tab(
                      text: "Chats",
                    ),
                    Tab(
                      text: "Update",
                    ),
                    Tab(
                      text: "Community",

                    ),
                    Tab(
                      text: "Status",

                    )

                  ]),
            )),),
        body: TabBarView(children: [
          ListView1(),
          LoginPage(),
          ListView2(),
          RegistrationPage()

        ]),

      ),
    );
  }
}
