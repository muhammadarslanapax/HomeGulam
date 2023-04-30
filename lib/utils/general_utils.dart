import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../res/color.dart';

class Utils{

  static toastMessage(String message){
    Fluttertoast.showToast(msg: message);

  }

  static flushMessage(String message,BuildContext context){
    showFlushbar(context: context, flushbar: Flushbar(
      message: message,
      backgroundColor: AppColors.redColor,
      messageColor: AppColors.blackColor,
      duration: const Duration(seconds: 2),
      icon:  Icon(Icons.error,size: 20,color:AppColors.whiteColor,),

    )..show(context));

  }

  static snackbarMessage(String message,BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
            backgroundColor: AppColors.redColor,
            content: Text(message,))
    );
  }

}