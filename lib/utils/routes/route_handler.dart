import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:ecommerce_app/view/home/home_page.dart';
import 'package:ecommerce_app/view/introduction_page.dart';
import 'package:ecommerce_app/view/location/location_page.dart';
import 'package:ecommerce_app/view/signup_page.dart';
import 'package:ecommerce_app/view/splash.dart';
import 'package:flutter/material.dart';

// Define Routes

// Route Names

// Control our page route flow
Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RoutesName.homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case RoutesName.splashPage:
      return MaterialPageRoute(builder: (context) => const Splash());
    case RoutesName.introductionPage:
      return MaterialPageRoute(builder: (context) => const Introduction());

    case RoutesName.locationPage:
      return MaterialPageRoute(builder: (context) => const LocationPage());
    case RoutesName.siginUpPage:
      return MaterialPageRoute(builder: (context) => const SignUpPage());

    default:
      throw ('This route name does not exit');
  }
}
