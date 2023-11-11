import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/storage/hive/hive_using_adapter_x/model/users.dart';

import '../database/hivedb.dart';

class Hive_Reg extends StatelessWidget {
  final name_cont=TextEditingController();
  final email_cont=TextEditingController();
  final pass_cont=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                controller: name_cont,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email_cont,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:"Username"
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: ()async{
                final userList = await HiveDB.instance.getUser();
                validateSignup(userList);
                name_cont.clear();
                email_cont.clear();
                pass_cont.clear();


              },
                shape: StadiumBorder(),
                color: Colors.red,
                child: Text("Registration here"),
              ),
            )

          ],
        ),
      ),
    );
  }

  void validateSignup(List<Users> userList) async {
    final name = name_cont.text;
    final email = email_cont.text;
    final psswrd = pass_cont.text;
    bool userExist = false;

    final validateEmail = EmailValidator.validate(email);
    if (name != "" && email != "" && psswrd != "") {
      if (validateEmail == true) {
        await Future.forEach(userList, (user) {
          if (user.email == email) {
            userExist = true;
          }
          else {
            userExist = false;
          }
        });
        if (userExist == true) {
          Get.snackbar("Error", "User Already Exist !!");
        }
        else {
          final validatePassword = checkPassword(psswrd);
          if (validatePassword == true) {
            final user = Users(email: email, password: psswrd, name: name);
            //if both email and password are valid uer will added to hive
            await HiveDB.instance.adduser(user); //user add avum
            Get.back(); // navigate to login
            Get.snackbar("Success", "User Registration Success!!");
          }
        }
      }
      else {
        Get.snackbar("Error", "Enter valid email");
      }
    }
    else {
      Get.snackbar("Error", "Please fill all the field");
    }
  }

  bool checkPassword(String psswrd) {
    if(psswrd.length<6){
      Get.snackbar("Error", "Password length must be >6");
      return false;
    }
    else{
      return true;
    }
  }
  
}
