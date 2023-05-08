import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class CustomAppBar extends StatelessWidget {
  final String text ;
  final Color txtcolor;
  final IconData?  iconData ;
  final bool centerTitle;


  const CustomAppBar({
    super.key, this.text ="", this.txtcolor = Colors.black38,  this.iconData,this.centerTitle =true
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      title: Text(
        "$text",
        style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: txtcolor),
      ),
      centerTitle: centerTitle,
      leading: (() {
        if(centerTitle){
          IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: AppColors.blackColor,
            ),
          );
        }
        else{
          null;
        }
      }())

    );
  }
}