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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,

          body: Container(

            height: MediaQuery.of(context).size.height*.8,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                header(context, "Sign up as a customer to buy our services"),

                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.textFieldBgColor,
                            border: Styles().textFieldStyle(),

                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.textFieldBgColor,
                            border: Styles().textFieldStyle(),

                          ),
                        ),
                      )
                    ],
                  ),
                ),

                TextButton(onPressed: (){}, child: Text('Forgot password',
                    style: TextStyle(color: AppColors.primaryTextColor,fontSize: 16))),

                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.primaryTextColor,
                      borderRadius: BorderRadius.circular(8)),
                  child:
                  TextButton(
                      child: Text('Log In',
                          style: TextStyle(fontSize: 16,
                              color: AppColors.whiteColor)),
                      onPressed: (){
                        Utils.toastMessage("Signup click");
                      }),
                ),

                Text('or', style: TextStyle(color: AppColors.blackColor,fontSize: 20, letterSpacing: 2),),

                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(onPressed: (){},

                        icon: SvgPicture.asset('assets/icons/ic_google.svg')),

                    IconButton(onPressed: (){},

                        icon: SvgPicture.asset('assets/icons/ic_fb.svg')),

                    IconButton(onPressed: (){},

                        icon: SvgPicture.asset('assets/icons/ic_apple.svg')),
                  ],),

              ],
            ),
          )
      ),
    );
  }
}
