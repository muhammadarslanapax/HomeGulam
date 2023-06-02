import 'package:ecommerce_app/utils/routes/route_handler.dart' as Routes;
import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:ecommerce_app/view_modal/auth_view_model.dart';
import 'package:ecommerce_app/view_modal/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.splashPage,
        onGenerateRoute: Routes.generateRoutes,
      ),
    );
  }
}

