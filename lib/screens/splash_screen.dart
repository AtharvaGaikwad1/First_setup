import 'package:crow_funding/screens/Signup.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Icon(
          Icons.home,
          size: 50,
        ),
        nextScreen: SignP(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue);
  }
}
