
import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/components/custom_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_listtile.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var currentTitle;

  var list1 = ["Face","Hair","Nails","Body","Heena","Photography","Event Decorator","Tailoring"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     currentTitle = list1[0];
  }
  void changeTitle() {
    setState(() {
      // get index of active tab & change current appbar title
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(

      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text(currentTitle.toString(),style: TextStyle(color: AppColors.blackColor),),
        backgroundColor: AppColors.whiteColor,centerTitle: true,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: DefaultTabController(
        length: 8,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 55,
                color: AppColors.whiteColor,
                child: TabBar(
                  isScrollable: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  unselectedLabelColor: AppColors.text_color_light,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.icon_select_color,
                  ),
                  tabs: [
                    CustomTab(title: "Facial"),
                    CustomTab(title: "Hair Styling"),
                    CustomTab(title: "Pedicure"),
                    CustomTab(title: "Message"),
                    CustomTab(title: "Bridle Heena"),
                    CustomTab(title: "New Born"),
                    CustomTab(title: "Birth Days"),
                    CustomTab(title: "Cutting"),
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                CustomListTile(list: const ["Face"],),
                CustomListTile(list: const ["Hair"],),
                CustomListTile(list: const ["Nails"],),
                CustomListTile(list: const ["Body"],),
                CustomListTile(list: const ["Heena"],),
                CustomListTile(list: const ["Photography"],),
                CustomListTile(list: const ["Event Decor"],),
                CustomListTile(list: const ["Tailoring"],),



              ],
            )),


          ],
        ),
      ),
    ));
  }
}

