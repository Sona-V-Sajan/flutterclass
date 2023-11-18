import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Siginup_Phone(),));
}
class  Siginup_Phone extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor:Colors.deepPurple,
        title: Center(child: Text("Regester")),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_circle_rounded),
                  hintText: "name"
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
          TextButton(onPressed: (){}, child: Text("Don't have an account? Signup"))
        ],
      ),


    );
  }
}
