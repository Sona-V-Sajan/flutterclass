import 'package:flutter/material.dart';

class Login_Tourism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(image: AssetImage("assets/img/tourism.png")),
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(onPressed: (){}, child: Text("Log In"),
            style:ElevatedButton.styleFrom(
              backgroundColor:Colors.blue[700],
              textStyle: TextStyle(
                fontSize:14,
              fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              minimumSize: Size(150, 50)


            ) ,),
          ),
          SizedBox(
            height: 40,
              child: Text("-or-")),
          MaterialButton(onPressed: (){},child: Text("data"),),
          MaterialButton(onPressed: (){},child: Text("data"),),

        ],
      ),
    );
  }
}
