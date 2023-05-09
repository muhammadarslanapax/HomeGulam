import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import 'package:flutter/material.dart';

class SubscriptionPlan extends StatefulWidget {
  const SubscriptionPlan({Key? key}) : super(key: key);

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

class _SubscriptionPlanState extends State<SubscriptionPlan> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(

          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_rounded),color: Colors.black,),
              centerTitle: true,
              elevation: 0,
              title: Text("Subscription",style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.white,
            ),

            body: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Select a subscription plan to continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.icon_select_color),),
                  SizedBox(height: 50,),

                  Container(

                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), //Use this code to make rounded corners
                      color: AppColors.container_Back,
                    ),

                    child: Container(

                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/card_pic.png",
                                            height: 40,
                                            width: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(

                                top:15 ,
                                left: 70,
                                child: Text(
                                  'Best Value',
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0),
                                ),)
                            ],
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 3),
                              child: Text("12 MONTHS",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,),)
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 3),
                                  child: Text("48 USD* ",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,),)
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 3),
                                  child: Text("Month",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,),)
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("48 USD* ",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 14),)
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("every 12 months",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 14),)
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("VAT and Local Tax may apply",style: GoogleFonts.poppins(color: AppColors.text2_color,fontWeight: FontWeight.w500,fontSize: 13),)
                              ),
                              Container(

                                  child: Container(
                                    margin: EdgeInsets.only(left: 25),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: AppColors.introTextColor,
                                          ),
                                          child: TextButton(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Subscribe Now',
                                                      style: TextStyle(
                                                          fontSize: 12, color: Colors.white))
                                                ],
                                              ),
                                              onPressed: () {
                                              }),
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

                    margin: EdgeInsets.only(top: 40),
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), //Use this code to make rounded corners
                      color: AppColors.container_Back,
                    ),

                    child: Container(


                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [

                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 3),
                              child: Text("1 MONTHS",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,),)
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                  child: Text("5 USD*/",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,),)
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 3),
                                  child: Text("Month",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,),)
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text("5 USD* ",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 14),)
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text("every  month",style: GoogleFonts.poppins(color: AppColors.locationBoxTextColor,fontWeight: FontWeight.w500,fontSize: 14),)
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text("VAT and Local Tax may apply",style: GoogleFonts.poppins(color: AppColors.text2_color,fontWeight: FontWeight.w500,fontSize: 13),)
                              ),
                              Container(

                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: AppColors.introTextColor,
                                          ),
                                          child: TextButton(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text('Subscribe Now',
                                                      style: TextStyle(
                                                          fontSize: 12, color: Colors.white))
                                                ],
                                              ),
                                              onPressed: () {
                                              }),
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
            ],
              ),


            ),

          ),
        );
  }
}
