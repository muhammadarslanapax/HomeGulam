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
  final buisnessName = TextEditingController();
  final Description = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.all(15),
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
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text("Business Name",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                            SizedBox(
                              height: 90,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.textFieldBgColor,
                                  border: Styles().texFormStyle(),
                                ),
                                controller: buisnessName,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                width: double.infinity,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Description",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                        SizedBox(
                          height: 90,
                          child: SingleChildScrollView(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.textFieldBgColor,
                                border: Styles().texFormStyle(),
                                hintText: "A little description on what your  business is about",
                              ),
                              maxLines: null,
                              controller: Description,
                            ),
                          ),
                        ),

                    ],
                  ),
                ),

              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(top: 40),
                      width: 140,
                      decoration: BoxDecoration(
                          color: AppColors.introTextColor,
                          borderRadius: BorderRadius.circular(11)),
                      child: TextButton(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Next',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white))
                            ],
                          ),
                          onPressed: () {
                          }),
                    ),
                  ],
                ),
              )
                  ],
                ),
              ),



    )
    );
  }
}
