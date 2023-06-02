import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../res/components/custom_appbar.dart';

class MainChatPage extends StatefulWidget {
  const MainChatPage({Key? key}) : super(key: key);

  @override
  State<MainChatPage> createState() => _MainChatPageState();
}

class _MainChatPageState extends State<MainChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: PreferredSize(preferredSize: Size.fromHeight(20), child: CustomAppBar(text: "")),

        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

          Expanded(flex: 0,
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: Icon(Icons.arrow_back_rounded,
                  color: AppColors.blackColor,)),
          ),

          Expanded(flex: 1,
              child: CircleAvatar(backgroundImage: AssetImage("assets/images/mainimg.png"),)),
          
          Expanded(flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Hybrid Tech',

                    style: TextStyle(fontSize: 16,color: AppColors.blackColor),
                    softWrap: false,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, // new
                  ),
                ),
              ],
            ),
          ),

              Expanded(flex: 0,
                child: Row(
                  children: [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.call),
                          color: AppColors.blackColor),

                    IconButton(onPressed: (){},
                        icon: Icon(Icons.more_vert_rounded,
                          color: AppColors.blackColor,)),
                  ],
                ),
              ),


        ]),
        )
    );
  }
}
