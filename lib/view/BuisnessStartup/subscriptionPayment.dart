import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../res/constants/styles.dart';
import '../../utils/general_utils.dart';
import '../payment/checkoutPage.dart';
import '../signUpPage.dart';

class SubscriptionPayment extends StatefulWidget {
  const SubscriptionPayment({Key? key}) : super(key: key);

  @override
  State<SubscriptionPayment> createState() => _SubscriptionPaymentState();
}

class _SubscriptionPaymentState extends State<SubscriptionPayment> {
  final _formkey = GlobalKey<FormState>();
  final fNameController = TextEditingController();
  final cardNoController = TextEditingController();
  final fNameController2 = TextEditingController();
  final BillingEmail = TextEditingController();
  final expiryMonthController = TextEditingController();
  final expiryYearController = TextEditingController();
  final cvvController = TextEditingController();
  final countryController = TextEditingController();
  final zipcodeController = TextEditingController();
  var cardTypeController;

  final myFocusNode = FocusNode();
  final myFocusNode2 = FocusNode();
  final myFocusNode3 = FocusNode();

  List typeList = [
    "Visa",
    "Debit",
    "Master",
    "Credit",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.black,),
        backgroundColor: AppColors.whiteColor,
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text("Proceed with Payment to \n book your appointment",style: GoogleFonts.poppins(color: AppColors.text_color,fontWeight: FontWeight.w500,fontSize: 20),)),

               Container(
                 margin: EdgeInsets.only(top: 20),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name',
                        style: Styles().txtFormTitleStyle(
                            color: AppColors.primaryTextColor)),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.dim4_text,
                          errorStyle: Styles().errorFormText(),
                          errorBorder: Styles().errorFormBorder(),
                          focusedErrorBorder: Styles().errorFormBorder(),
                          border: Styles().texFormStyle(),
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'required field';
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          FocusNode().nextFocus();
                        },

                        controller: fNameController,
                      ),
                    )
                  ],
              ),
               ),

              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Card Number',
                          style: Styles().txtFormTitleStyle(
                              color: AppColors.primaryTextColor)),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.dim4_text,
                            errorStyle: Styles().errorFormText(),
                            errorBorder: Styles().errorFormBorder(),
                            focusedErrorBorder: Styles().errorFormBorder(),
                            border: Styles().texFormStyle(),
                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'required field';
                            }
                            return null;
                          },

                          controller: cardNoController,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 2,
                      child: ExpiryDate("Expiry Date"),
                    ),
                    Expanded(flex: 1,child: Container()),

                    Expanded(flex: 2,
                        child: CVV("CVV"))
                  ],
                ),),

              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.centerLeft,
                child: Text('Billing Information',
                    style: Styles().txtFormTitle2Style(
                        color: AppColors.text_color,)),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 2,
                      child: COUNTRY("Country Code"),
                    ),

                    Expanded(flex: 2,
                        child: ZIPCODE("Zip Code"))
                  ],
                ),),

              /////////////////////////////////////////////


              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Full Name',
                          style: Styles().txtFormTitleStyle(
                              color: AppColors.primaryTextColor)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.dim4_text,
                        errorStyle: Styles().errorFormText(),
                        errorBorder: Styles().errorFormBorder(),
                        focusedErrorBorder: Styles().errorFormBorder(),
                        border: Styles().texFormStyle(),
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'required field';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {
                        FocusNode().nextFocus();
                      },

                      controller: fNameController2,
                    )
                  ],
                ),
              ),

              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Billing Email',
                            style: Styles().txtFormTitleStyle(
                                color: AppColors.primaryTextColor)),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.dim4_text,
                          errorStyle: Styles().errorFormText(),
                          errorBorder: Styles().errorFormBorder(),
                          focusedErrorBorder: Styles().errorFormBorder(),
                          border: Styles().texFormStyle(),
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'required field';
                          }
                          return null;
                        },

                        controller: BillingEmail,
                      )
                    ],
                  ),
                ),
              ),

              Container(

                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      width: 300,
                      decoration: BoxDecoration(
                          color: AppColors.introTextColor,
                          borderRadius: BorderRadius.circular(7)),
                      child: TextButton(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Confirm and Pay',
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



            ],
          ),
        ),
      ),


    );
  }










  @override
  void dispose() {
    fNameController.dispose();
    cardNoController.dispose();
    cardTypeController.dispose();
    expiryMonthController.dispose();
    expiryYearController.dispose();
    cvvController.dispose();
    super.dispose();
  }


  Column  ExpiryDate(title) {
    return Column(
      children: [
        Container(margin: EdgeInsets.symmetric(horizontal: 5),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(title,
                  style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor)),
            )),

        Row(
          children: <Widget>[
            Expanded(flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),

                child:
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(2),
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.dim4_text,
                    errorStyle: Styles().errorFormText(),
                    errorBorder: Styles().errorFormBorder(),
                    focusedErrorBorder: Styles().errorFormBorder(),
                    border: Styles().texFormStyle(),
                  ),
                  onChanged: (value) {
                    if(value.length==2){FocusScope.of(context).nextFocus();}
                  },

                  validator: (value) {
                    if(value!.isEmpty){
                      return '*';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    FocusNode().nextFocus();
                  },

                  controller: expiryMonthController,

                ),
              ),
            ),

            Expanded(flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),

                child: TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(2),
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.dim4_text,
                    errorStyle: Styles().errorFormText(),
                    errorBorder: Styles().errorFormBorder(),
                    focusedErrorBorder: Styles().errorFormBorder(),
                    border: Styles().texFormStyle(),
                  ),

                  validator: (value) {
                    if(value!.isEmpty){
                      return '*';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    FocusNode().nextFocus();
                  },

                  onChanged: (value) {
                    if(value.length==2){FocusScope.of(context).nextFocus();}
                    else if(value.isEmpty){FocusScope.of(context).previousFocus();}
                  },

                  controller: expiryYearController,
                ),
              ),
            ),


          ],
        )
      ],
    );
  }

  Column  CVV(title) {
    return Column(
      children: [
        Container(margin: EdgeInsets.symmetric(horizontal: 5),width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(title,
                  style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor)),
            )),

        Row(
          children: <Widget>[
            Expanded(flex: 1,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.dim4_text,
                  errorStyle: Styles().errorFormText(),
                  errorBorder: Styles().errorFormBorder(),
                  focusedErrorBorder: Styles().errorFormBorder(),
                  border: Styles().texFormStyle(),
                ),

                validator: (value) {
                  if(value!.isEmpty){
                    return '*';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusNode().nextFocus();
                },

                onChanged: (value) {
                  if(value.length==3){myFocusNode.unfocus();}
                  else if(value.isEmpty){FocusScope.of(context).previousFocus();}
                },
                focusNode: myFocusNode,
                controller: cvvController,
              ),
            ),


          ],
        )
      ],
    );
  }

  Column  COUNTRY(title) {
    return Column(
      children: [
        Container(margin: EdgeInsets.symmetric(horizontal: 5),width: double.infinity,
            child: Text(title,
                style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor))),

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Expanded(flex: 1,
                child: TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(2),
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.dim4_text,
                    errorStyle: Styles().errorFormText(),
                    errorBorder: Styles().errorFormBorder(),
                    focusedErrorBorder: Styles().errorFormBorder(),
                    border: Styles().texFormStyle(),
                  ),

                  validator: (value) {
                    if(value!.isEmpty){
                      return '*';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    FocusNode().nextFocus();
                  },

                  onChanged: (value) {
                    if(value.length==2){myFocusNode2.unfocus();}
                    else if(value.isEmpty){FocusScope.of(context).previousFocus();}
                  },
                  focusNode: myFocusNode2,
                  controller: countryController,
                ),
              ),


            ],
          ),
        )
      ],
    );
  }

  Column  ZIPCODE(title) {
    return Column(
      children: [
        Container(margin: EdgeInsets.symmetric(horizontal: 5),width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(title,
                  style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor)),
            )),

        Row(
          children: <Widget>[
            Expanded(flex: 1,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(2),
                ],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.dim4_text,
                  errorStyle: Styles().errorFormText(),
                  errorBorder: Styles().errorFormBorder(),
                  focusedErrorBorder: Styles().errorFormBorder(),
                  border: Styles().texFormStyle(),
                ),

                validator: (value) {
                  if(value!.isEmpty){
                    return '*';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusNode().nextFocus();
                },

                onChanged: (value) {
                  if(value.length==2){myFocusNode3.unfocus();}
                  else if(value.isEmpty){FocusScope.of(context).previousFocus();}
                },
                focusNode: myFocusNode3,
                controller: zipcodeController,
              ),
            ),


          ],
        )
      ],
    );
  }

}
