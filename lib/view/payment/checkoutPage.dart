import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:ecommerce_app/view/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/components/custom_appbar.dart';
import '../../utils/general_utils.dart';
import '../../utils/routes/routes_name.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(60),
        child: CustomAppBar(text: 'checkout', txtcolor: AppColors.blackColor, iconData: Icons.arrow_back_rounded,),),

      body: Form(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),

          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                Container(margin: EdgeInsets.symmetric(vertical: 20),
                  width: 350,
                  height: 180,
                  decoration: Styles().boxBorderStyle(AppColors.dim2TextColor),


                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(flex: 2,
                          child:
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.receipt,color: AppColors.primaryTextColor),
                                hintText: ('Apply coupon'),
                                hintStyle: TextStyle(color: AppColors.primaryTextColor),
                                filled: true,
                                fillColor: AppColors.dim3Color,
                                border: Styles().texFormStyle(),
                              ),


                            ),
                          )),

                      Expanded(flex: 1,
                        child:
                        Container(
                          height: 55,
                          margin: const EdgeInsets.only(left: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.primaryTextColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                              child: Text('Apply ',
                                  style: TextStyle(
                                      fontSize: 16, color: AppColors.whiteColor)),
                              onPressed: () {

                                  Utils.toastMessage("validate");
                              }),),),


                    ],),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: Styles().txtFormTitleStyle(color: AppColors.dim2TextColor),
                        hintText: "SubText",
                      )
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: Styles().txtFormTitleStyle(color: AppColors.dim2TextColor),
                        hintText: "Delivery",
                      )
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: Styles().txtFormTitleStyle(color: AppColors.blackColor),
                        hintText: "Total",
                      )
                  ),
                ),

                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  width: double.infinity,
                  decoration: Styles().btnBorderStyle(),
                  child: TextButton(
                      child: Text('Check out',
                          style: TextStyle(
                              fontSize: 16, color: AppColors.whiteColor)),
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.slotBookingPage);


                      }),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
