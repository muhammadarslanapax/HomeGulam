import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),

          child: Column(
            children: [
              Text("Hello Maria",style: TextStyle(color: AppColors.text_color,fontFamily: ),)
            ],

          ),
        ),

      ),
    );
  }
}
