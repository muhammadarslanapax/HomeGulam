import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/constants/styles.dart';

class ShopStartup extends StatefulWidget {
  const ShopStartup({Key? key}) : super(key: key);

  @override
  State<ShopStartup> createState() => _ShopStartupState();
}

class _ShopStartupState extends State<ShopStartup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(

            children: [
              SizedBox(height: 50,),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/shopStartup_pic1.svg",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text("HomeGlam",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Set up your Shop/bussiness and let \n       customer book your services",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 18,),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/shopStartup_pic2.svg",height: 100,width: 100,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Business Name",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ],
                ),
              ),

              
            ],
          ),
          
        ),

    )
    );
  }
}
