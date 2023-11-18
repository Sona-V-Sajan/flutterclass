import 'package:flutter/material.dart';
import 'package:project2/storage/firebase/phone_numbeer_authentication/signup_phone.dart';
void main(){
  runApp(MaterialApp(home: Login_phone(),));
}
class  Login_phone extends StatelessWidget {
  final email_cont=TextEditingController();
  final pass_cont=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(backgroundColor:Colors.deepPurple,
          title: Center(child: Text("Login")),),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.alternate_email_rounded),
                    hintText: "email"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      hintText: "password"
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(onPressed: (){},
                color: Colors.deepPurple,
                minWidth: double.infinity,
                height:50,
                shape:RoundedRectangleBorder(
                ),
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold
                ),),),
            ),
            SizedBox(
              height:40,
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Siginup_Phone()));
            }, child: Text("Don't have an account? Signup"))
          ],
        ),
      ),
    );
  }
}
