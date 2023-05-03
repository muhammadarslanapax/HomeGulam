import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:ecommerce_app/view/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fNameController;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          title: Text('checkout',
              style: TextStyle(color: AppColors.blackColor)),
          leading: SizedBox(
            height: 25,
            width: 25,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.blackColor,
                )),
          )),

    );
  }
}
