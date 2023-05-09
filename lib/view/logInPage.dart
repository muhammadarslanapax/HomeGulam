import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../res/constants/styles.dart';
import '../utils/general_utils.dart';
import 'signUpPage.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: header(
                      context, "Sign up as a customer to buy our services"),
                ),


                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email', style: TextStyle(fontSize: 16)),
                      SizedBox(
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.textFieldBgColor,
                            border: Styles().texFormStyle(),
                          ),

                          controller: emailController,

                        ),
                      )
                    ],
                  ),
                ),

                Container(margin: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password', style: Styles().txtFormTitleStyle(color: AppColors.dim2TextColor)),
                      SizedBox(

                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.textFieldBgColor,
                            border: Styles().texFormStyle(),
                          ),
                          controller: passwordController,
                        ),
                      )
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {

                    },
                    child: Text('Forgot password',
                        style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor))),

                Container(
                  height: 55,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.primaryTextColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      child: Text('Log in',
                          style: TextStyle(
                              fontSize: 18, color: AppColors.whiteColor)),
                      onPressed: () {
                        Utils.toastMessage("login click");
                      }),
                ),


                Text(
                  'or',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 15,
                      letterSpacing: 2),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      elevation(IconButton(
                          onPressed: () {
                            Utils.toastMessage("google");
                          },
                          icon: SvgPicture.asset(
                              'assets/icons/ic_google.svg'))),
                      elevation(IconButton(
                          onPressed: () {
                            Utils.toastMessage("fb");
                          },
                          icon: SvgPicture.asset('assets/icons/ic_fb.svg'))),
                      elevation(IconButton(
                          onPressed: () {
                            Utils.toastMessage("apple");

                          },
                          icon:
                          SvgPicture.asset('assets/icons/ic_apple.svg'))),

                    ],),
                ),
              ],
            ),
          )),
    );
  }
}

Material elevation(iconButton) {
  return Material(
    shape: const CircleBorder(),
    elevation: 2,
    child: iconButton,
  );
}
