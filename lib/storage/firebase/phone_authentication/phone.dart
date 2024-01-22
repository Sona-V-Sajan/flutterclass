import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/storage/firebase/phone_authentication/otp.dart';
void main(){
  runApp(MaterialApp(home: Login_Shared(),));
}
class Login_Shared extends StatefulWidget {
  const Login_Shared({super.key});

  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {
  TextEditingController Countrycode =TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    Countrycode.text="+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        margin: EdgeInsets.only(right: 25,left: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/img/bgr.png")),
              Text("Phone verification",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
              Text(
                "We need to  register your phone before getting  \n started!",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(

                  children: [
                    SizedBox(
                      width: 10, ),
                    SizedBox(
                      width: 40,
                        child: TextField(
                          controller:Countrycode,
                          decoration: InputDecoration(
                            border: InputBorder.none
                          ),
                        )
                    ),
                    Text("|",style: TextStyle(fontSize: 33,color: Colors.grey),),
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                            hintText: "Phone"
                          ),

                        )),
                  ],
                ),
              ),

              SizedBox(
                height:20,
              ),
              SizedBox(
                height:45,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp_Screen()));
                  },

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  minWidth: double.infinity,
                  color: Colors.blue,
                  child: Text(
                    "Send the Code",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
          
              TextButton(
                  onPressed: () {},
                  child: Text("Continue",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent)))
            ],
          ),
        ),
      ),
    );
  }


}
