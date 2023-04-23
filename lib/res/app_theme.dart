import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';

class CommonMethod {

  ThemeData themedata = ThemeData(
      appBarTheme:  AppBarTheme(
        color: AppColors.tail,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.tail,
        ),
      ),
      scaffoldBackgroundColor: Colors.grey[200],
      textTheme:  const TextTheme(
        bodyLarge: TextStyle(),
        bodyMedium: TextStyle(),
      ).apply(
        bodyColor: AppColors.introTextColor,
      ));
}