import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strong_pass/HomePage.dart';
import 'package:page_transition/page_transition.dart';
import 'main.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
          duration: 3000,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Strong ",style: GoogleFonts.mcLaren(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      color: Colors.cyan,
                      fontWeight: FontWeight.w500),),
                Text("Pass",style: GoogleFonts.mcLaren(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),),
              ],),
            ],
          ),
          nextScreen: NavBar(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.rightToLeft,
          backgroundColor: Colors.black26,
      );
  }
}