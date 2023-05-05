import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/general_utils.dart';

class SlotBookingPage extends StatelessWidget {
  const SlotBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        child:
      Scaffold(
        appBar: AppBar(backgroundColor: AppColors.whiteColor,elevation: 0,),

        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Slot Booked", style: GoogleFonts.poppins(fontSize: 20,
                      color: AppColors.blackColor,fontWeight: FontWeight.w500),),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text ("Great!", style: GoogleFonts.poppins(fontSize: 25,
                      color: AppColors.primaryTextColor,fontWeight: FontWeight.w500),),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text ("Your slot has been booked", style: GoogleFonts.poppins(fontSize: 16,
                      color: AppColors.blackColor,fontWeight: FontWeight.w500),),
                ),
                
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                    child: SvgPicture.asset("assets/icons/ic_check.svg")
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text ("Waiting for Jenny’s Hair Salon to confirm your booking ",
                    style: GoogleFonts.poppins(fontSize: 16,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w500,),
                      softWrap: true,
                      maxLines: null,
                      textAlign: TextAlign.center,
                  ),
                ),


                Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: Styles().boxBorderStyle(AppColors.box_colorlight),
                ),

                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.box_color,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(

                      child: Row(mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.arrow_back_rounded,color: AppColors.blackColor),

                          Text('Back To Home screen',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.blackColor))
                        ],
                      ),
                      onPressed: () {
                        Utils.toastMessage("Signup click");
                      }),
                )
              ],


            ),
          ),
        ),

      )
      ),
    );
  }
}
