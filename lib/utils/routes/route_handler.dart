import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:ecommerce_app/view/home/account/account_page.dart';
import 'package:ecommerce_app/view/home/account/favourite_page.dart';
import 'package:ecommerce_app/view/home/account/profile_page.dart';
import 'package:ecommerce_app/view/home/category/booking_page.dart';
import 'package:ecommerce_app/view/home/category/oppoointment.dart';
import 'package:ecommerce_app/view/home/category/reviews.dart';
import 'package:ecommerce_app/view/home/home_page.dart';
import 'package:ecommerce_app/view/introduction_page.dart';
import 'package:ecommerce_app/view/location/location_page.dart';
import 'package:ecommerce_app/view/logInPage.dart';
import 'package:ecommerce_app/view/signUpPage.dart';
import 'package:ecommerce_app/view/splash.dart';
import 'package:ecommerce_app/view/varificationPage.dart';
import 'package:flutter/material.dart';

import '../../view/home/account/card_page.dart';
import '../../view/home/category/category_page.dart';
import '../../view/home/home/notification.dart';

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
    case RoutesName.sigUpPage:
      return MaterialPageRoute(builder: (context) => const SignUpPage());
    case RoutesName.logInPage:
      return MaterialPageRoute(builder: (context) => const LogInPage());
    case RoutesName.verificationPage:
      return MaterialPageRoute(builder: (context) => const VerificationPage());

    case RoutesName.notificationPage:
      return MaterialPageRoute(builder: (context) => const NotificationPage());

    case RoutesName.categoryPage:
      return MaterialPageRoute(builder: (context) => const Category());
    case RoutesName.oppointmentPage:
      return MaterialPageRoute(builder: (context) => const Oppointment());
    case RoutesName.reviewsPage:
      return MaterialPageRoute(builder: (context) => const ReviewsPage());
    case RoutesName.bookingPage:
      return MaterialPageRoute(builder: (context) => const BookingPage());
    case RoutesName.accountPage:
      return MaterialPageRoute(builder: (context) => const Account());
    case RoutesName.profilePage:
      return MaterialPageRoute(builder: (context) => const ProfilePage());
    case RoutesName.favouritePage:
      return MaterialPageRoute(builder: (context) => const FavouritePage());
    case RoutesName.cardPage:
      return MaterialPageRoute(builder: (context) => const CardPage());
    default:
      throw ('This route name does not exit');
  }
}
