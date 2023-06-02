

import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:ecommerce_app/view_modal/user_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:provider/provider.dart';

import '../modal/user_model.dart';
import '../repository/auth_repository.dart';
import '../utils/general_utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false ;
  bool get loading => _loading ;

  bool _signUpLoading = false ;
  bool get signUpLoading => _signUpLoading ;


  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value){
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data , BuildContext context) async {

    setLoading(true);

    _myRepo.loginApi(data).then((value){









      setLoading(false);
      final userPreference = Provider.of<UserViewModel>(context , listen: false);
      userPreference.saveUser(
          UserModel(

              //token: value['token'].toString()
              token: value['page'].toString()
          )
      );



      Utils.flushMessage('Login Successfully', context);
      // Navigator.pushNamed(context, RoutesName.home);
      // Navigator.pushNamed(context, RoutesName.homePage);
      if(kDebugMode){
        print(value.toString());
         Navigator.pushNamed(context, RoutesName.homePage);

      }
    }).onError((error, stackTrace){
      setLoading(false);
      Utils.flushMessage(error.toString(), context);
      if(kDebugMode){
        print(error.toString());
      }

    });
  }


  Future<void> signUpApi(dynamic data , BuildContext context) async {

    setSignUpLoading(true);

    _myRepo.signUpApi(data).then((value){
      setSignUpLoading(false);
      Utils.toastMessage("Registered Successfully please Login");
    //  Utils.flushMessage('SignUp Successfully', context);
      Navigator.pushNamed(context, RoutesName.logInPage);
      if(kDebugMode){
        print(value.toString());

      }
    }).onError((error, stackTrace){
      setSignUpLoading(false);
      Utils.flushMessage(error.toString(), context);
      if(kDebugMode){
        print(error.toString());
      }

    });
  }

}