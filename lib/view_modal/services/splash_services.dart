
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../modal/user_model.dart';
import '../../utils/routes/routes_name.dart';
import '../user_view_model.dart';

class SplashServices {


  Future<UserModel> getUserDate() => UserViewModel().getUser();


  void checkAuthentication(BuildContext context)async{

    getUserDate().then((value)async{

      print(value.token.toString());

      if(value.token.toString() == 'null' || value.token.toString() == ''||value.token!.isEmpty){
        await Future.delayed(Duration(seconds: 3));
        Navigator.pushNamed(context, RoutesName.introductionPage);
        print(value.token.toString());
      }else {
        await  Future.delayed(Duration(seconds: 3));
       // Navigator.pushNamed(context, RoutesName.homePage);

        Navigator.pushReplacementNamed(context, '/home');

      }

    }).onError((error, stackTrace){
      if(kDebugMode){
        print(error.toString());
      }
    });

  }



}