import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(home: ClipWidget(),));
}
class ClipWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ///clipreect
          ClipRect(
            child: Container(
              child:Align(
                widthFactor: .6,
                heightFactor: .4,
                alignment: Alignment.center,
                child: Image.network("https://images.unsplash.com/photo-1682687982046-e5e46906bc6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ///clipRounded rextangle
          ClipRRect(
            borderRadius:BorderRadius.circular(300) ,
            child: Container(
              child: Image.network("https://images.unsplash.com/photo-1446889727648-8c23e3039b24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1549&q=80"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //clip oval shape it wil be depend on 2 height and width
          ClipOval(
            child:Image.network("https://images.unsplash.com/photo-1682687982046-e5e46906bc6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")
          ),
          SizedBox(
            height: 20,
          ),
          ClipPath(
            clipper: OctagonalClipper(),
            child: Container(
              height: 220,
              color: Colors.red,
              child: Center(child: Text("OctagonalClipper()")),
            ),
          ),
        ],
      ),
    );
  }
}
