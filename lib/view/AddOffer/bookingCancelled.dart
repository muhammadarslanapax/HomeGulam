import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';

class BookingCancelled extends StatefulWidget {
  const BookingCancelled({Key? key}) : super(key: key);

  @override
  State<BookingCancelled> createState() => _BookingCancelledState();
}

class _BookingCancelledState extends State<BookingCancelled> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                  alignment: Alignment.center,
                   child:  Text("BOOKING CANCELLED",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w600,fontSize: 26,),),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  alignment: Alignment.center,
                  child:  Text("Your booking with Jenny Gram \n            has been cancelled \n                       by them",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 18,),),
                ),

                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  alignment: Alignment.center,
                  child:  SvgPicture.asset("assets/images/cancel.svg",),
                ),

                Container(

                  margin: EdgeInsets.only(top: 40),
                  height: 235,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), //Use this code to make rounded corners
                    color: AppColors.container_Back2,
                  ),

                  child: Container(


                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Text("Booking Details",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 18)),
                        ),

                        Row(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text("Title",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 16),)
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.fromLTRB(140, 10, 0, 0),
                                          child: Text("Party Hair Style",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 14),)
                                      ),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.fromLTRB(140, 0, 0, 0),
                                          child: Text("(Rubi’s Hair Salon)",style: GoogleFonts.poppins(color: AppColors.text_colorgrey,fontWeight: FontWeight.w400,fontSize: 12),)
                                      ),
                                    ],
                                  ),
                                )
                            ),

                          ],
                        ),

                        Row(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                child: Text("Duration",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 16),)
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(178, 10, 0, 0),
                                child: Text("2 hours",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 14),)
                            ),


                          ],
                        ),

                        Row(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text("Charges",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 16),)
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(185, 10, 0, 0),
                                child: Text(" \$ 200",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 14),)
                            ),

                          ],
                        ),

                        Row(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text("Booking Slot",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 16),)
                            ),
                            Container(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                                  child: Row(

                                    children: [
                                      Container(
                                          width: 35,
                                          height: 42,

                                          decoration: BoxDecoration(
                                              color: AppColors.box_color,
                                              borderRadius: BorderRadius.all(Radius.circular(7))
                                          ),
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("SUN \n  4",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 10),),
                                            ],
                                          )
                                      ),
                                      Container(
                                        width: 55,
                                        height: 35,
                                        padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: AppColors.box_color,
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                          ),
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("4-5 PM",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 10),),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                )
                            ),

                          ],
                        ),




                      ],
                    ),
                  ),


                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        width: 320,
                        decoration: BoxDecoration(
                            color: AppColors.box_color,
                            borderRadius: BorderRadius.circular(7)),
                        child: TextButton(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               Container(
                                   height:25,
                                   width: 25,
                                   child: Image.asset("assets/images/back-arrow.png")),

                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text('Back to Home screen',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.text_color)),
                                )
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

      ),
    );
  }
}
