import 'package:flutter/material.dart';
import 'package:project2/Listview/listview2.dart';
import 'package:project2/Listview/listview_constructor.dart';
import 'package:project2/loginPage.dart';
import 'package:project2/practice/register.dart';

void main() {
  runApp(const MaterialApp(
    home: CustomizeAppbar(),
    color: Colors.teal,
  ));
}

class CustomizeAppbar extends StatelessWidget {
  const CustomizeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.search_off),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New BroadCast")),
                const PopupMenuItem(child: Text("New Group")),
              ];
            }),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: Container(
                child: const TabBar(tabs: [
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
              )),
        ),
        body: TabBarView(children: [
          const ListView1(),
          LoginPage(),
          ListView2(),
          const RegistrationPage()
        ]),
      ),
    );
  }
}
