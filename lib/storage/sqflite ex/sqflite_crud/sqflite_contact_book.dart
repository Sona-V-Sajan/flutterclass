import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/storage/sqflite%20ex/sqflite_crud/sql_function.dart';
void main(){
  runApp(const MaterialApp(home: Contact_Book(),));
}

class Contact_Book extends StatefulWidget {
  const Contact_Book({super.key});

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
        title: const Text("My contact"
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
                  backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
                  child: const Icon(Icons.person),
                ),
                title: Text(contacts[index] ["cname"]),
                subtitle: Text(contacts[index] ["cnumber"]),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () => showSheet(contacts[index]["id"]), icon: const Icon(Icons.edit)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSheet(null),
        child: const Icon(Icons.person_add_alt_1_outlined),),
    );
  }

  final name_controller = TextEditingController();
  final num_controller = TextEditingController();

  void showSheet(int? id) {
    if(id != null){
      final exisitingcontact=contacts.firstWhere((element) => element["id"] == id );
      name_controller.text =exisitingcontact["cname"];
      num_controller.text=exisitingcontact["cnumber"];

    }
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
                .bottom + 120 //this is used to pop up the additional space then other area is scrollable
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: name_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: num_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
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
                  Navigator.of(context).pop;
                }
              }, child: Text(
                  id == null ? "create contact" : "Update Contact")),
            )
          ],
        ),
      );
    });
  }


  Future <void> createContact(String name, String number) async {
    //collected value add to db
    await SQL_functions.addnewContact(name, number);//classname.static metthod/tatic variable
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

