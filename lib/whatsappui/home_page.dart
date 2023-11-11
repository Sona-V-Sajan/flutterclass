import 'package:flutter/material.dart';
import 'package:project2/Listview/listview4.dart';
import 'package:project2/Listview/listview_builder.dart';
import 'package:project2/Listview/listview_constructor.dart';
import 'package:project2/Listview/listview_seperator.dart';

class HomeWhatsapp extends StatelessWidget {
  const HomeWhatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Change the length to 4 for four tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 15),
            const Icon(Icons.search),
            const SizedBox(width: 15),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("New group"),
                  ),
                  PopupMenuItem(
                    child: Text("New broadcast"),
                  ),
                  PopupMenuItem(
                    child: Text("Linked devices"),
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                  ),
                  PopupMenuItem(
                    child: Text("Payment"),
                  ),
                  PopupMenuItem(
                    child: Text("Settings"), // Corrected the typo here
                  ),
                ];
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.people), text: "People"),
                Tab(
                    text: 'Chats',
                ),
                Tab(text: 'Updates'),
                Tab(text: 'Calls'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView1(),
            ListView4(),
            ListView_Builder(),
            ListView_Separated(),
            // Add more TabBarView widgets if you have additional tabs
          ],
        ),
      ),
    );
  }
}
