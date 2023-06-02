import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../modal/user_model.dart';
import '../res/constants/styles.dart';
import '../utils/general_utils.dart';
import '../utils/routes/routes_name.dart';
import '../view_modal/auth_view_model.dart';
import '../view_modal/user_view_model.dart';
import 'signUpPage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}


class _LogInPageState extends State<LogInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {

    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();
  }

  @override

  Widget build(BuildContext context) {
     final authViewMode = Provider.of<AuthViewModel>(context);


    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: header(
                        context, "Sign up as a customer to buy our services"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
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

                            controller: _emailController,

                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
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
                            controller: _passwordController,
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









                          //
                          Map data = {
                            'email' : _emailController.text.toString(),
                            'password' : _passwordController.text.toString(),
                          };

                          // Map data = {
                          //   'email' : 'eve.holt@reqres.in',
                          //   'password' : 'cityslicka',
                          // };


                          authViewMode.loginApi(data, context);

                          // authViewMode.loginApi(data , context).then((value){
                          //
                          //
                          //
                          //
                          //
                          //
                          //
                          //   // var k = "This is key";
                          //   //
                          //   //
                          //   // UserViewModel().saveUser(UserModel(token: k.toString()));
                          //
                          //
                          //
                          //
                          // //  Navigator.pushNamed(context, RoutesName.homePage);
                          //
                          //
                          // }).onError((error, stackTrace){
                          //   Utils.toastMessage("Error  to login");
                          //
                          //
                          //
                          // });




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
