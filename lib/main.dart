import 'package:ecommerce_app/res/app_theme.dart';
import 'package:ecommerce_app/utils/routes/route_handler.dart' as Routes;
import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:ecommerce_app/view/agreementPage.dart';
import 'package:ecommerce_app/view/agreementPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: CommonMethod().themedata,
      onGenerateRoute: Routes.generateRoutes,
      initialRoute: RoutesName.agreementPage,

    );
  }
}

