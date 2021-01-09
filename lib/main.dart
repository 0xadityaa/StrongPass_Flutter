import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strong_pass/SplashScreen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Strong Pass",
      darkTheme: ThemeData(
    brightness: Brightness.dark,
    ),
    home: SplashScreen(),
    );
  }
}