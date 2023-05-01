import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class CustomTab extends StatelessWidget {
  var title ;
   CustomTab({
    super.key,
     required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 35,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.text_color_light,width: 1),

        ),child:  Align(
        alignment: Alignment.center,
        child: Text(title.toString()),
      ),
      ),
    );
  }
}
