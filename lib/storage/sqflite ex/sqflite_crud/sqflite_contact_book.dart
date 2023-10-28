import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/storage/sqflite%20ex/sqflite_crud/sql_function.dart';
void main(){
  runApp(MaterialApp(home: Contact_Book(),));
}

class Contact_Book extends StatefulWidget {
  @override
  State<Contact_Book> createState() => _Contact_BookState();
}

class _Contact_BookState extends State<Contact_Book> {
  List<Map<String, dynamic>> contacts = []; //sstore the db value
  bool isloading = true; //check value initially true or false
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My contact"
      ),),
      body: isloading
          ? Text(
        "Create New Contact",
        style: GoogleFonts.abel(fontSize: 25),
      )
          : ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
                ),
                title: Text(contacts[index] ["cname"]),
                subtitle: Text(contacts[index] ["cnumber"]),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSheet(null),
        child: Icon(Icons.person_add_alt_1_outlined),),
    );
  }

  final name_controller = TextEditingController();
  final num_controller = TextEditingController();

  void showSheet(int? id) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder: (context) {
      return Container(
        padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom +
                120 //this is used to pop up the additional space then other area is scrollable
        ),
        child: Column(
          children: [
            TextField(
              controller: name_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name"
              ),
            ),
            TextField(
              controller: num_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Number"
              ),
            ),
            ElevatedButton(onPressed: () {
              if (id == null) {
                createContact(
                    name_controller.text, num_controller.text);
              }
              {
                if (id != null) {
                  //update contact();
                }
                name_controller.text = ""; //values null
                num_controller.text = "";
              }
            }, child: Text(
                id == null ? "create contact" : "Update Contact"))
          ],
        ),
      );
    });
  }


  Future <void> createContact(String name, String number) async {
    //collected value add to db
    await SQL_functions.addnewContact(name, number);//classname.sstatic metthod/tatic variable
    readContact_and_rfersh_Ui();
  }
  @override
  void initState(){
    readContact_and_rfersh_Ui();
    super.initState();

  }

 Future <void> readContact_and_rfersh_Ui() async{
    final mycontacts =await SQL_functions.readContact();
    setState(() {
      contacts = mycontacts;
      isloading = false;
    });
 }
}

