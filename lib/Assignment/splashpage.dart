import 'package:flutter/material.dart';
import 'package:project2/Assignment/loginpage.dart';
import 'package:project2/Assignment/signup.dart';
void main(){
  runApp(MaterialApp(home: SplashPage()));
}
class  SplashPage extends StatelessWidget {

  final key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
          child: Form(
            key: key1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Hello There!" ,style:TextStyle(fontSize: 50,fontWeight: FontWeight.bold))),
            Text("Automatic identity verification which enable you to verify your identity",style: TextStyle(fontSize: 15,color: Colors.grey)),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset("assets/img/img1.png",width: 160,height: 200,),
            ) ,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(minWidth:double.infinity,
                height:60,onPressed: (
                    ){
                  final valid =key1.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Inavlid datas')));
                  }


                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    side:BorderSide(
                      color: Colors.green,
                    ) ,
                    borderRadius: BorderRadius.circular(40)
                ),

                child: Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white70),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(minWidth:double.infinity,
                height:60,onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>SignUp()));

                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    side:BorderSide(
                      color: Colors.green,
                    ) ,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white70),),
              ),
            ),





          ],
        ),
      ), )

    );
  }
}
