import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project2/storage/hive/hive_using_adapter_x/database/hivedb.dart';
import 'package:project2/storage/hive/hive_using_adapter_x/model/users.dart';
import 'package:project2/storage/hive/hive_using_adapter_x/views/home_hive.dart';
import 'package:project2/storage/hive/hive_using_adapter_x/views/reg_hiveadpx.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Users>("users");
   Hive.registerAdapter(UsersAdapter());
  runApp(GetMaterialApp(

    home: Hive_login(),
  ));


}
class Hive_login extends StatelessWidget {
  final emai_cont=TextEditingController();
  final pass_cont=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emai_cont,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:"Email"
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                  controller: pass_cont,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText:"Password"

                  )),
            ),
            MaterialButton(onPressed: ()async{
              final users = await HiveDB.instance.getUser();
              validateLogin(users);


            },
              shape: StadiumBorder(),
              color: Colors.red,
              child: Text("Login Here"),
            ),
            TextButton(onPressed: (){
              Get.to(Hive_Reg());
            }, child: Text("Not  Register Here"))

          ],
        ),
      ),
    );
  }

  Future<void> validateLogin(List<Users> users) async {
    final email = emai_cont.text.trim();
    final pwd = pass_cont.text.trim();
    bool userFound = false;
    if (email != "" && pwd != "") {
      await Future.forEach(users, (user) {
        if (user.email == email && user.password == pwd) {
          userFound = true;
        } else {
          userFound = false;
        }
      });
      if (userFound == true) {
        Get.offAll(() => Hive_Home(email: email));
        Get.snackbar("Success", "Login Success",
            backgroundColor: Colors.green);
      } else {
        Get.snackbar("Error", "Login Failed, No User Exists",
            backgroundColor: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Fields MustNot be Empty",
          backgroundColor: Colors.red);
    }
  }
}
