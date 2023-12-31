import 'package:flutter/material.dart';
import 'package:project2/Assignment/loginpage.dart';
import 'package:project2/Assignment/signup.dart';
void main(){
  runApp(MaterialApp(home: SplashPage()));
}
class  SplashPage extends StatelessWidget {

  final key1 = GlobalKey<FormState>();

  SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
          child: Form(
            key: key1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text("Hello There!" ,style:TextStyle(fontSize: 50,fontWeight: FontWeight.bold))),
            const Text("Automatic identity verification which enable you to verify your identity",style: TextStyle(fontSize: 15,color: Colors.grey)),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginPage()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Inavlid data')));
                  }


                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    side:const BorderSide(
                      color: Colors.green,
                    ) ,
                    borderRadius: BorderRadius.circular(40)
                ),

                child: const Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white70),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(minWidth:double.infinity,
                height:60,onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>const SignUp()));

                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    side:const BorderSide(
                      color: Colors.green,
                    ) ,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white70),),
              ),
            ),





          ],
        ),
      ), )

    );
  }
}
