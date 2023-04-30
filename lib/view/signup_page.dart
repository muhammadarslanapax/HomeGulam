import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body:Center(child:
      SizedBox(
        height: screenHeight*0.93 ,width: screenWidth*0.9, // added
      child: Column(
        children: [
          Text('Welcom to',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),

          Text('HomeGlam',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22))
        ],
      )
      )
      )
    );
  }
}
