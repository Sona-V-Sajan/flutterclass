import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
void main()async{
  await Hive.initFlutter();
  await Hive.openBox("todo_box");
  runApp(const MaterialApp(home:HiveTodo() ,));
}
class HiveTodo extends StatefulWidget {
  const HiveTodo({super.key});

  @override
  State<HiveTodo> createState() => _HiveTodoState();
}

class _HiveTodoState extends State<HiveTodo> {
  List<Map<String,dynamic>> task =[];
  //hive object
  final my_box =Hive.box("todo_box");
  void initStat(){
    readTask_refershUi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Task"),),
      body: task.isEmpty
      ?const Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount:task.length ,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2),
                itemBuilder:(context,index){
                return Card(
                  elevation: 5,
                  color: Colors.primaries[index% Colors.primaries.length],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text("${ DateTime.now().hour }:${DateTime.now().minute}:${DateTime.now().second}"),
                          // Text(data)
                        ],
                      ),
                      Text(task[index]["taskname"],style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                       Text(task[index]["taskdec"],style: GoogleFonts.abel(fontSize: 20),),
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: ()=>showAlertbox(task[index]["id"]), icon: const Icon(Icons.edit)),
                          IconButton(onPressed: () =>deleteTask(task[index]["id"]), icon: const Icon(Icons.delete)),
                        ],
                      )),
                      
                    ],
                  ),
                  
                );
        },
          
),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showAlertbox(null),
        child: const Icon(Icons.task),
      ),

    );
  }
final title_cntrl=TextEditingController();
 final descrip_cntrl=TextEditingController() ;
void  showAlertbox(int? key) {//key means task[index]["id"]
    //key is similar to id in sqlite
  if(key !=null){
    final existing_task = task.firstWhere((element) => element["id"] == key);
    title_cntrl.text= existing_task['taskname'];
    descrip_cntrl.text = existing_task['taskdec'];
  }
  showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: Colors.green,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Title",
            ),
            controller: title_cntrl,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: 5,
            decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Content",
          ),
            controller: descrip_cntrl,

          )
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          if(title_cntrl.text !="" && descrip_cntrl.text != ""){
            createTask({//create cheyumbol kodukunna value ayirikum read um deleteil um vilikunnath
              "tname":title_cntrl.text.trim(),
            "tcontent":descrip_cntrl.text.trim()

            });
          }
          title_cntrl.text ="";
          descrip_cntrl.text="";
          Navigator.pop(context);
        }, child: const Text("Create",style: TextStyle(
          color: Colors.white
        ),)),
        TextButton(onPressed: (){
          updateTask(key,{
            "tname":title_cntrl.text.trim(),
            "tcontent":descrip_cntrl.text.trim()
          });
          title_cntrl.text ="";
          descrip_cntrl.text="";
          Navigator.pop(context);
        },
            child: const Text("Update" ,style: TextStyle(
            color: Colors.white
        ))),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("Delete",style: TextStyle(
    color: Colors.white
    ))),

      ],
    );
  });
}

 Future<void> createTask(Map<String, dynamic> mytask) async {
   await my_box.add(mytask);
   readTask_refershUi();
 }
  Future <void> readTask_refershUi() async {
  //nammal oru variable cerate cheyith(taskfromhive)=> how many to need an ascending order.
    //aascending order il edukan us cheyunnath ann keys(e){mybox.keys.map(e) keys ile data e il stor avum},hiveil ethra  keys ethranam
    // ondo athine okke individual pairs ayit idukan eth use cheyum (similar to id , in sqlite oru passing daa btwn screens)
    //
  final taskFromHive =my_box.keys.map((e){ //fetch all the keys from hive box

    final value = my_box.get(e);// single map corresponding to the key
    return{
      "id" :e,
      "taskname":value["tname"],
      "taskdec":value["tcontent"],

    };
    //eh eppol map rupathil ann  (it's iterable)nammal list ayit anu veendah so we an use tolist
  }).toList();
  setState(() {
    task =taskFromHive.reversed.toList();//reverversd data opposite ayit vilikan ennale add cheyithath thazheum inn add cheyithah mukalil veran
  });
  }

 Future<void> updateTask(int? key, Map<String, dynamic> updatedTask) async{
  await my_box.put(key, updatedTask);
  readTask_refershUi();
 }

  Future<void> deleteTask(int key )async {
  await my_box.delete(key);
  readTask_refershUi();
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("succesfully deleted")));
  }
}
