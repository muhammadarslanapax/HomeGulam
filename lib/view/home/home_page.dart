import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/constants/constants.dart' as Constants;
import 'account/account_page.dart';
import 'category/category_page.dart';
import 'chat/chat_app.dart';
import 'home/home_page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List screens = const [Home(), Category(), Chat(),Account()];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColors.icon_color,

            type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.bottom_nav_bg_color,


          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
          ],
          currentIndex: _index,
          selectedItemColor: AppColors.icon_select_color,
          onTap: _onItemTapped,
        ),

        body: screens[_index],


      ),
    );
  }
}
