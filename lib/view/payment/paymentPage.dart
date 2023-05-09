import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:ecommerce_app/view/payment/checkoutPage.dart';
import 'package:ecommerce_app/view/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../res/components/custom_appbar.dart';
import '../../utils/general_utils.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}
class _PaymentPageState extends State<PaymentPage> {
  final _formkey = GlobalKey<FormState>();
  final fNameController = TextEditingController();
  final cardNoController = TextEditingController();
  final expiryMonthController = TextEditingController();
  final expiryYearController = TextEditingController();
  final cvvController = TextEditingController();
  var cardTypeController  ;
  final myFocusNode = FocusNode();

  List typeList = [
    "Visa",
    "Debit",
    "Master",
    "Credit",
  ];

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formkey,
        child: Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(60),
            child: CustomAppBar(text: 'payment', txtcolor: AppColors.blackColor, iconData: Icons.arrow_back_rounded,),),

          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  header(
                      context, "proceed with payment to book your appointment"),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Full Name',
                              style: Styles().txtFormTitleStyle(
                                  color: AppColors.primaryTextColor)),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.dim3Color,
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
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Type',
                            style: Styles().txtFormTitleStyle(
                                color: AppColors.primaryTextColor),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.dim3Color),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DropdownButton(
                                hint: const Text("Select here"),
                                icon: const Icon(Icons.arrow_drop_down),
                                underline: const SizedBox(),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black87),
                                isExpanded: true,
                                value: cardTypeController,
                                onChanged: (newType) {
                                  setState(() {
                                    cardTypeController = newType;
                                  });
                                },

                                items: typeList.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
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
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.dim3Color,
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

                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    decoration: Styles().btnBorderStyle(),
                    child: TextButton(
                        child: Text('proceed To payment',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.whiteColor)),
                        onPressed: () {
                          if(!_formkey.currentState!.validate()){
                            Utils.toastMessage("validate");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CheckoutPage()));
                          }
                        }),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        const CheckBoxWidget(),

                        Expanded(
                          child: Text('Add this card as your default payment method',
                            style: Styles().txtFormTitleStyle(color: AppColors.dim2TextColor),
                          maxLines: null,
                          softWrap: true),
                        )
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
            child: Text(title,
                style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor))),

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
                    fillColor: AppColors.dim3Color,
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
                fillColor: AppColors.dim3Color,
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
            child: Text(title,
                style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor))),

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
                fillColor: AppColors.dim3Color,
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
}


class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  var isChecked =false;

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates =<MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
      };
      if(states.any(interactiveStates.contains)){
        return AppColors.primaryTextColor;}

      return AppColors.redColor;
    }
    return Checkbox(
      checkColor: AppColors.whiteColor,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value){
        setState(() {
          isChecked = value!;
        });
      },
    );
  }

}
