import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project2/practice/stateful_Splash.dart';
void main(){
  runApp(MaterialApp(home: IntroScreen(),));
}
class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration decorationPage=const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black),
      bodyTextStyle: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          color: Colors.brown,),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.yellow,
          Colors.black
        ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,


        )
      ),
      imageFlex: 1,

    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: decorationPage,
          title: "First Page",
          body: "Introduction/Onboarding package for flutter app with some customizations possibilities "
              "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image:IntroImage("https://images.unsplash.com/photo-1670474930161-e398585f7ef1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80")
        ),
        PageViewModel(
            decoration: decorationPage,
            title: "Second Page",
            body: "Introduction/Onboarding package for flutter app with some customizations possibilities "
                "Introduction/Onboarding package for flutter app with some customizations possibilities",
            image:IntroImage("https://images.unsplash.com/photo-1694955437705-07a5cb686c0a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1380&q=80")
        ),
        PageViewModel(
            decoration: decorationPage,
            title: "Second Page",
            body: "Introduction/Onboarding package for flutter app with some customizations possibilities "
                "Introduction/Onboarding package for flutter app with some customizations possibilities",
            image:IntroImage("https://images.unsplash.com/photo-1617143207675-e7e6371f5f5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1528&q=80")
        )

      ],
      onSkip:()=>Navigator.of(context).push(MaterialPageRoute(builder:
      (context)=>Splash2())),
      onDone:()=>Navigator.of(context).push(MaterialPageRoute(builder:
          (context)=>Splash2())),
      showSkipButton: true,
      skip: const Text("Skip"),
      // showBackButton:true,
      // back: const Text("Back"),
      next: const Icon(Icons.arrow_forward_ios_rounded),
      done: const Text("Done"),
      dotsDecorator: const DotsDecorator(
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        size: Size(12, 15),
        activeSize: Size(22, 10),
        activeColor: Colors.green,

      ),

    );
  }

 Widget IntroImage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage(imgpath))
            ),
              // child: Image.network(imgpath,width:double.infinity)),
          // const Text("Hello ......")
          ),
        ],
      ),
    );
 }
}
