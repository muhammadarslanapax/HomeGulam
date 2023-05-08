import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/components/custom_appbar.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({Key? key}) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {

  final currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustomAppBar(
              text: "Chat",
              txtcolor: AppColors.blackColor,
              centerTitle: false)),


      body: Column(
        children: <Widget>[

          Expanded(flex: 0,
            child: Column(
              children: [
                Container(
                    width: (MediaQuery.of(context).size.width) * .95,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25)

                        ),
                        filled: true,
                        fillColor: AppColors.textFieldBgColor,
                        suffixIcon: const Icon(Icons.search),
                        hintText: 'Search here',
                      ),
                    )),


                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("New Chats",
                      style: Styles().txtFormTitleStyle(
                          color: AppColors.primaryTextColor, fontSize: 18.0)),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              return Column(
                  children: <Widget>[
                  ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.chat)),
                    title: Text('Chat $index', style: TextStyle(fontSize: 22)),
                    subtitle: Text("Here is $index Chat",style: TextStyle(fontSize: 14,color: AppColors.dim2TextColor)),
                    trailing: Text("${DateTime.now().minute}:${DateTime.now().hour}",
                        style: TextStyle(fontSize: 12,color: AppColors.primaryTextColor,)),
                  ),

               Divider(), // Horizontal Divider Line
              ],
              );

            },
            ),
            ),


        ],
      ),
    ));
  }
}

