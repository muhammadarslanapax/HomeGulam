import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PAge_NoteFound extends StatefulWidget {
  const PAge_NoteFound({Key? key}) : super(key: key);

  @override
  State<PAge_NoteFound> createState() => _PAge_NoteFoundState();
}

class _PAge_NoteFoundState extends State<PAge_NoteFound> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
          child: Container(
            width: double.infinity,
            child: Column(

              children: [
                SizedBox(height: 50,),
                Container(
                  width: 200,
                  height: 155,
                  margin: EdgeInsets.symmetric(vertical: 30),
                    child: SvgPicture.asset("assets/images/icon_pageerror.svg")),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("404", style: GoogleFonts.poppins(fontSize: 50,
                      color: AppColors.introTextColor,fontWeight: FontWeight.w500),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 1),
                  child: Text("Ooops! Page not found", style: GoogleFonts.poppins(fontSize: 20,
                      color: AppColors.blackColor,fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text("This page doesn’t exist or was removed !We suggest you to home page", style: GoogleFonts.poppins(fontSize: 16,
                      color: AppColors.text2_color,fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                  maxLines: null,
                  softWrap: true,),
                ),

                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  width: 250,
                  decoration: BoxDecoration(
                      color: AppColors.box_color,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Back to home page',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.blackColor))
                        ],
                      ),
                      onPressed: () {
                      }),
                )
              ],
            ),
          ),
        ),
      );
  }
}
