import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import 'package:flutter/material.dart';

class SubscriptionDetails extends StatefulWidget {
  const SubscriptionDetails({Key? key}) : super(key: key);

  @override
  State<SubscriptionDetails> createState() => _SubscriptionDetailsState();
}

class _SubscriptionDetailsState extends State<SubscriptionDetails> {
  String radio1Value = '';
  String radio2Value = '';
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
              Text("Subscription plan details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: AppColors.icon_select_color),),
              SizedBox(height: 50,),



              Container(

                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), //Use this code to make rounded corners
                  color: AppColors.container_Back,
                ),

                child: Container(

                  margin: EdgeInsets.only(top: 20),
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
                              style: TextStyle(color: AppColors.image_text,
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
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Text("VAT and Local Tax may apply",style: GoogleFonts.poppins(color: AppColors.text2_color,fontWeight: FontWeight.w500,fontSize: 13),)
                          ),


                        ],
                      ),




                    ],
                  ),
                ),


              ),



              Container(
                  margin: EdgeInsets.fromLTRB(5, 50, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text("Payment Method",style: GoogleFonts.poppins(color: AppColors.blackColor,fontWeight: FontWeight.w500,),)),


              Container(
                      height: 220,
                      padding: EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), //Use this code to make rounded corners
                        color: AppColors.container_Back,
                      ),

                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: AppColors.container_Border),
                                //Use this code to make rounded corners
                              ),
                              child: Row(
                                children: [
                                  Radio(
                                    value: "male",groupValue:radio1Value,onChanged: (value){
                                    setState(() {
                                      radio1Value = value.toString();
                                    });
                                  },
                                    activeColor: AppColors.icon_select_color,

                                  ),
                                  Text("Credit/ Debit card",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black)),
                                  Container(
                                      margin: EdgeInsets.only(left: 50),
                                      child: Image.asset("assets/images/visa.png",height: 30,width: 30,)),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image.asset("assets/images/visa_cardpic.png",height: 30,width: 30,)),
                                ],
                              ),



                            ),
                            Container(
                              height: 60,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: AppColors.container_Border),
                                //Use this code to make rounded corners
                              ),
                              child: Row(
                                children: [
                                  Radio(
                                    value: "male",groupValue:radio2Value,onChanged: (value){
                                    setState(() {
                                      radio2Value = value.toString();
                                    });
                                  },
                                    activeColor: AppColors.icon_select_color,
                                    toggleable: true,
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),

                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image.asset("assets/images/paypa.png",height: 60,width: 60,)),

                                ],
                              ),),


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
