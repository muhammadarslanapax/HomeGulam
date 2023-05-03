import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:ecommerce_app/view/home/category/booking_page.dart';
import 'package:ecommerce_app/view/home/category/oppoointment.dart';
import 'package:ecommerce_app/view/home/category/reviews.dart';
import 'package:ecommerce_app/view/home/home_page.dart';
import 'package:ecommerce_app/view/introduction_page.dart';
import 'package:ecommerce_app/view/location/location_page.dart';
import 'package:ecommerce_app/view/logInPage.dart';
import 'package:ecommerce_app/view/payment/checkoutPage.dart';
import 'package:ecommerce_app/view/payment/paymentPage.dart';
import 'package:ecommerce_app/view/signUpPage.dart';
import 'package:ecommerce_app/view/splash.dart';
import 'package:ecommerce_app/view/varificationPage.dart';
import 'package:flutter/material.dart';

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
    case RoutesName.paymentPage:
      return MaterialPageRoute(builder: (context) => const PaymentPage());
    case RoutesName.checkoutPage:
      return MaterialPageRoute(builder: (context) => const CheckoutPage());

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
    default:
      throw ('This route name does not exit');
  }
}
