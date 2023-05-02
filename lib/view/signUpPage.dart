import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:ecommerce_app/utils/general_utils.dart';
import 'package:ecommerce_app/view/logInPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../res/color.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,

        body: Container(
          height: MediaQuery.of(context).size.height*.9,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(

            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: header(context, "Sign up as a customer to buy our services"),
                 ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: SizedBox(
                     height: 70,
                     width: double.infinity,
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Name', style: TextStyle(fontSize: 16)),
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
                 ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: SizedBox(
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
                 ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: SizedBox(
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
                 ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: SizedBox(
                     height: 70,
                     width: double.infinity,
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Phone no', style: TextStyle(fontSize: 16)),
                         SizedBox(height: 50,
                           child: TextFormField(
                             keyboardType: TextInputType.phone,
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
                 ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15),
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         color: AppColors.primaryTextColor,
                         borderRadius: BorderRadius.circular(8)),
                     child:
                     TextButton(
                         child: Text('Sign Up',
                           style: TextStyle(fontSize: 16,
                           color: AppColors.whiteColor)),
                         onPressed: (){
                           Utils.toastMessage("Signup click");
                         }),
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Text('or', style: TextStyle(color: AppColors.blackColor,fontSize: 20, letterSpacing: 2),),
                 ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(onPressed: (){},

                        icon: SvgPicture.asset('assets/icons/ic_google.svg')),

                    IconButton(onPressed: (){},

                        icon: SvgPicture.asset('assets/icons/ic_fb.svg')),

                    IconButton(onPressed: (){},

                        icon: SvgPicture.asset('assets/icons/ic_apple.svg')),
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? ',
                            maxLines: 2, textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.dimTextColor,
                              letterSpacing: 2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )
                        ),

                        TextButton(child:
                        Text('Log in', style: TextStyle(
                            color: AppColors.primaryTextColor ,fontSize: 16),),
                            onPressed: ()
                            {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => const LogInPage()));
                            })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }}

Container header(context, message){
  return  Container(
    child: Column(
      children: <Widget>[
        Text('Welcome to',maxLines: 1, textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.dim2TextColor,
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.w500)
        ),
        const Text('HomeGlam',maxLines: 1, textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30,letterSpacing: 4)
        ),
        SizedBox(
          width: (MediaQuery.of(context).size.width)*0.55,
          child: Text(message,
              maxLines: 2, textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.dimTextColor,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )
          ),
        ),
      ],
    ),
  );

}

