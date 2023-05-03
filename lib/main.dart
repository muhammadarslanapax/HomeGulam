import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/utils/routes/route_handler.dart' as Routes;
import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme: TextTheme(
         // titleLarge: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
          // titleSmall: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
//           bodySmall: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),

         // simple text
           bodyMedium: GoogleFonts.poppins(fontSize: 18,color: AppColors.text_color_light,fontWeight: FontWeight.w500),
           bodySmall: GoogleFonts.poppins(fontSize: 24,color: AppColors.blackColor,fontWeight: FontWeight.w500),
           bodyLarge: GoogleFonts.poppins(fontSize: 24,color: AppColors.blackColor,fontWeight: FontWeight.w500),
          // bodyLarge: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
         //  displayLarge: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
        //  displayMedium: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
        //  displaySmall: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
        //  headlineMedium: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
        // headlineSmall: GoogleFonts.poppins(fontSize: 20,color: AppColors.redColor,fontWeight: FontWeight.w700),
      )),
      onGenerateRoute: Routes.generateRoutes,
      initialRoute: RoutesName.sigUpPage,
    );
  }
}

