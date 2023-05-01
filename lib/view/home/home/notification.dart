import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(color: AppColors.blackColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: BackButton(
            color: Colors.black
        ),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return  ListTile(
              onTap: (){

              },
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.wixstatic.com/media/536dac_afeaa1cbe49840be9a6401cff8017b4f~mv2.jpg/v1/fill/w_754,h_361,al_c/536dac_afeaa1cbe49840be9a6401cff8017b4f~mv2.jpg"),
              ),
              title: const Text("You have a book today at 6 pm with",style: TextStyle(fontSize: 14),),
              subtitle: Text("Rubi's Saloon",style: TextStyle(color: AppColors.icon_select_color,fontWeight: FontWeight.w700),),
              trailing: Text("3 : 10 am",style: TextStyle(color: AppColors.icon_select_color),),

            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                thickness: 1,
              ),
          itemCount: 100),
    ));
  }
}
