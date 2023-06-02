import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:ecommerce_app/utils/general_utils.dart';
import 'package:ecommerce_app/view/logInPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../res/color.dart';
import '../res/components/custom_field.dart';
import '../view_modal/auth_view_model.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();

    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneNoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context);

    // final authViewMode = Provider.of<AuthViewModel>(context);



    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: header(
                        context, "Sign up as a customer to buy our services"),
                  ),


                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name',
                              style: Styles().txtFormTitleStyle(
                                  color: AppColors.dim2TextColor)),
                          SizedBox(
                            child: CustomField(
                              nameController: _nameController,
                              inputType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;


                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email',
                              style: Styles().txtFormTitleStyle(
                                  color: AppColors.dim2TextColor)),
                          SizedBox(
                            child: CustomField(
                              nameController: _emailController,
                              inputType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;


                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: Styles().txtFormTitleStyle(
                                color: AppColors.dim2TextColor),
                          ),
                          SizedBox(
                            child: CustomField(
                              nameController: _passwordController,
                              inputType: TextInputType.visiblePassword,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;


                              },                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone no',
                            style: Styles().txtFormTitleStyle(
                                color: AppColors.dim2TextColor),
                          ),
                          SizedBox(
                            child: CustomField(
                              nameController: _phoneNoController,
                              inputType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;


                              },                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.primaryTextColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      height: 50,
                      child: TextButton(
                          child: Center(
                            child: Text('Sign Up',
                                style: TextStyle(
                                    fontSize: 16, color: AppColors.whiteColor)),
                          ),
                          onPressed: () {
                            if(_formKey.currentState!.validate()){



                              Map data = {
                                "email": "eve.holt@reqres.in",
                                "password": "pistol"
                              };





                              authViewMode.signUpApi(data, context);




                              // Map data = {
                              //   'email' : _emailController.text.toString(),
                              //   'password' : _passwordController.text.toString(),
                              // };

                              //
                              // Map data = {
                              //   'email' : "eve.holt@reqres.in",
                              //   'password' : "pistol",
                              // };

                              print('api hit');





                            }
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'or',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 20,
                          letterSpacing: 2),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      elevation(IconButton(
                          onPressed: () {
                            Utils.toastMessage("google");
                          },
                          icon: SvgPicture.asset('assets/icons/ic_google.svg'))),
                      elevation(IconButton(
                          onPressed: () {
                            Utils.toastMessage("fb");
                          },
                          icon: SvgPicture.asset('assets/icons/ic_fb.svg'))),
                      elevation(IconButton(
                          onPressed: () {
                            Utils.toastMessage("apple");
                          },
                          icon: SvgPicture.asset('assets/icons/ic_apple.svg'))),
                    ],
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Already have an account? ',
                                maxLines: null,
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.dimTextColor,
                                )),
                          ),
                        ),
                        TextButton(
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                  color: AppColors.primaryTextColor,
                                  fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LogInPage()));
                            })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


Column header(context, message) {
  return Column(
    children: <Widget>[
      Text('Welcome to',
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.dim2TextColor,
              letterSpacing: 2,
              fontSize: 18,
              fontWeight: FontWeight.w500)),
      Text('HomeGlam',
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryTextColor,
              fontSize: 30,
              letterSpacing: 4)),
      SizedBox(
        width: (MediaQuery.of(context).size.width) * 0.55,
        child: Text(message,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.dimTextColor,
              letterSpacing: 2,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
      ),
    ],
  );
}
