import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/general_utils.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
              backgroundColor: AppColors.whiteColor,
              elevation: 0,
              centerTitle: true,
              title: Text('Verification',
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
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * .8,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  header(context),

                  Row(
                    children: <Widget>[

                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                                style: Theme.of(context).textTheme.titleLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                            onChanged: (value) => {
                                  if(value.length ==1){FocusScope.of(context).nextFocus()}
                                }
                            ),
                          )),

                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                                style: Theme.of(context).textTheme.titleLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                            onChanged: (value) => {
                                  if(value.length ==1){FocusScope.of(context).nextFocus()}
                                  else if(value.isEmpty){FocusScope.of(context).previousFocus()}
                                }
                            ),
                          )),

                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                                style: Theme.of(context).textTheme.titleLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                            onChanged: (value) => {
                                  if(value.length ==1){FocusScope.of(context).nextFocus()}
                                  else if(value.isEmpty){FocusScope.of(context).previousFocus()}
                                }
                            ),
                          )),

                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                                style: Theme.of(context).textTheme.titleLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                            onChanged: (value) => {
                                  if(value.length ==1){FocusScope.of(context).nextFocus()}
                                  else if(value.isEmpty){FocusScope.of(context).previousFocus()}
                                }
                            ),
                          )),

                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                                style: Theme.of(context).textTheme.titleLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                            onChanged: (value) => {
                                  if(value.length ==1){FocusScope.of(context).nextFocus()}
                                  else if(value.isEmpty){FocusScope.of(context).previousFocus()}
                                }
                            ),
                          )),

                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextFormField(
                                style: Theme.of(context).textTheme.titleLarge,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                            onChanged: (value) => {
                                  if(value.length ==1){FocusScope.of(context).nextFocus()}
                                  else if(value.isEmpty){FocusScope.of(context).previousFocus()}
                                }
                            ),
                          )),

                    ]),
                  
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.primaryTextColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                        child: Text('verify',
                            style: TextStyle(
                                fontSize: 18, color: AppColors.whiteColor)),
                        onPressed: () {
                          Utils.toastMessage("verify click");
                        }),
                  ),
                  
                  TextButton(onPressed: (){},
                    child: Text('Resend Code',
                        style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            letterSpacing: 1)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

Widget header(context) {
  return  SizedBox(
      width: (MediaQuery.of(context).size.width) * .8,
      child: Text('Enter the OTP send on your phone number',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.w500)));
}

