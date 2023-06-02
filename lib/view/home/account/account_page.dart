import 'package:ecommerce_app/modal/user_model.dart';
import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/components/custom_appbar.dart';
import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../view_modal/services/splash_services.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}



class _AccountState extends State<Account> {


  var a ;
  @override
  Widget build(BuildContext context) {





    Future<UserModel> getUser()async{

      final SharedPreferences sp = await SharedPreferences.getInstance();
      final String? token = sp.getString('token');

      return UserModel(
          token: token.toString()
      );
    }


     getUser().then((value){

       a = value.toString();


     });









    final _theme = Theme.of(context).textTheme;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
      child: CustomAppBar(text: 'Account $a', txtcolor: AppColors.blackColor, iconData: null,)),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          width: _width,
          height: _height,

          padding:  EdgeInsets.symmetric(horizontal: 20),
      child: ListView(

        children:  [
          ListTile(



            onTap: (){
              Navigator.pushNamed(context, RoutesName.profilePage);

            },
            leading: const SizedBox(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://png.pngtree.com/png-clipart/20210915/ourlarge/pngtree-avatar-placeholder-abstract-white-blue-green-png-image_3918476.jpg"),
              ),
            ),
            title: const Text(
              "Maria Phillips  (Me) ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Divider(),

           Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.favouritePage);



              },
              leading: const Icon(Icons.favorite_outline),
              title: const Text(
                "Favourite  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const Divider()
          ,
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.paymentPage);


              },
              leading: const Icon(Icons.payments_outlined),

              title: const Text(
                "Payment  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),


            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.settings);



              },
              leading: const Icon(Icons.settings_outlined),
              title: const Text(
                "Setting  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),


            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.termandcondition);

              },

              leading: const Icon(Icons.chat_bubble_outline),
              title: const Text(
                "Terms and Conditions   ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),


            ),
          ),



        ],
      )

      ,



        ),
      ),
    );
  }
}
