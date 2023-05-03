import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class CustomAppBar extends StatelessWidget {
  final String text ;
  final Color txtcolor;
  final IconData  iconData ;



  const CustomAppBar({
    super.key, required this.text, required this.txtcolor, required this.iconData,
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
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
