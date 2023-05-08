import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';


class Styles{

  OutlineInputBorder texFormStyle() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none);}

  TextStyle txtFormTitleStyle({required Color color, fontSize =16}){
    return GoogleFonts.poppins(fontSize: fontSize,
        color: color,fontWeight: FontWeight.w500);
  }

  BoxDecoration btnBorderStyle(){
    return BoxDecoration(
        color: AppColors.primaryTextColor,
        borderRadius: BorderRadius.circular(8));
  }

  OutlineInputBorder errorFormBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.redColor,width: 1)
    );
  }

  TextStyle errorFormText(){
    return TextStyle(fontSize: 12,color: AppColors.redColor);
  }

  BoxDecoration boxBorderStyle(color){
    return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20));
  }
}

