import 'package:flutter/material.dart';
import 'package:southpaw/src/core/app_constant.dart';
import 'package:southpaw/src/core/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crypto App",
      initialRoute: AppUtil.splash,
      routes: appRoutes
    );
  }
}
