import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../res/color.dart';
import '../../../res/components/custom_appbar.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context).textTheme;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
          child: CustomAppBar(text: 'Credit Cards', txtcolor: AppColors.blackColor, iconData: Icons.arrow_back_rounded,)),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          width: _width,

          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(

            children:  [
              Text("Saved Payment Methods",style: TextStyle(color: AppColors.blackColor),),
              const Divider(),
              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  onTap: (){

                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/mastercard.png"),
                  ),
                  title: const Text(
                    "Credit Card",
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

                  },
                  leading:   CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/images/paypal.png"),
                ),
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

                  },
                  leading:   CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/google.png"),
                  ),                  title: const Text(
                    "Google pay",
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

                  },

                  leading:   CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/apple.png"),
                  ),                  title: const Text(
                    "Apple Pay",
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
