import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Otp_Screen extends StatefulWidget {
  const Otp_Screen({super.key});

  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 56,
      width: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,)),

      ),
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

              SizedBox(
                height:20,
              ),
          Pinput(
         length: 6,
          showCursor: true,

        ),
              SizedBox(height: 20,),
              SizedBox(
                height:45,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){},

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  minWidth: double.infinity,
                  color: Colors.blue,
                  child: Text(
                    "Verify Phone number",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),

              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, "phone", (route) => false);
                  },
                  child: Text("Edit phone number",
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
