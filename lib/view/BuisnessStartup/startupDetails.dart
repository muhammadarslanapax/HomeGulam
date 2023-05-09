import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../res/constants/styles.dart';

class StartupDetails extends StatefulWidget {
  const StartupDetails({Key? key}) : super(key: key);

  @override
  State<StartupDetails> createState() => _StartupDetailsState();
}

class _StartupDetailsState extends State<StartupDetails> {
  List<DropdownMenuItem<String>> get catagory{
    return[
      DropdownMenuItem(child: Text("PAK"),value: "1",),
      DropdownMenuItem(child: Text("IND"),value: "2",),
      DropdownMenuItem(child: Text("AUS"),value: "3",),
      DropdownMenuItem(child: Text("ENG"),value: "4",),
      DropdownMenuItem(child: Text("DUB"),value: "5",)
    ];
  }
  List<DropdownMenuItem<String>> get payment{
    return[
      DropdownMenuItem(child: Text("Paypal"),value: "1",),
      DropdownMenuItem(child: Text("Google Pay"),value: "2",),
      DropdownMenuItem(child: Text("Live Payment Method"),value: "3",),
      DropdownMenuItem(child: Text("Card Payment Method"),value: "4",),
      DropdownMenuItem(child: Text("Advance Card Payment Method"),value: "5",)
    ];
  }
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_rounded), color: Colors.black,),
                  ],
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Image.asset("assets/images/circle_avatar.png",height: 120,width: 120,)
                    ),
                    Positioned(
                        bottom: 10,
                        right: 0,
                        child: Icon(Icons.camera_alt_outlined,color: AppColors.icon_select_color,))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Julie’s Decor",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text("Address",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                        SizedBox(
                          height: 70,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.textFieldBgColor,
                              border: Styles().texFormStyle(),
                            hintText: "57 Church Street, London, E57 6DQ"),
                            style: TextStyle( color: AppColors.text2_color),
                            maxLines: null,
                            controller: address,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Category",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                          SizedBox(
                           child: DropdownButtonFormField(items: catagory, onChanged: (String? value){
                              print(catagory);
                           },
                             decoration: InputDecoration(
                                 filled: true,
                                 fillColor: AppColors.textFieldBgColor,
                                 border: Styles().texFormStyle(),
                                 hintText: "Choose the categories you specialize in",hintStyle: TextStyle(fontSize: 14),),
                                 style: TextStyle( color: AppColors.text2_color),

                           )
                          )
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text("Payment Method",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                        SizedBox(
                            child: DropdownButtonFormField(items: payment, onChanged: (String? value){
                              print(payment);
                            },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.textFieldBgColor,
                                border: Styles().texFormStyle(),
                                hintText: "Choose a payment method",hintStyle: TextStyle(fontSize: 14),),
                              style: TextStyle( color: AppColors.text2_color),

                            )
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text("Contact Number",style: GoogleFonts.poppins(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                        SizedBox(
                          height: 70,
                          child: TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.textFieldBgColor,
                                border: Styles().texFormStyle(),
                                hintText: "0975 654 7689 9987"),
                            style: TextStyle( color: AppColors.text2_color),
                            maxLines: null,
                            controller: address,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(top: 25),
                        width: 140,
                        decoration: BoxDecoration(
                            color: AppColors.introTextColor,
                            borderRadius: BorderRadius.circular(11)),
                        child: TextButton(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Continue',
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
              ]


            ),
          ),

        ),



      ),
    );
  }
}
