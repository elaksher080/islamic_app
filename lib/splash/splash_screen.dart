import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/layout/home_layout.dart';

class SplashScreen extends StatelessWidget {

  static const String routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(
      const Duration(seconds: 3),
        () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
    );

    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor:  Color.fromRGBO(234, 227, 211, 1.0),
      body: Center(
        child: Image(
            image: AssetImage(
               AppTheme.isDark ? 'assets/images/splash_dark.png'
              : 'assets/images/logo2.png'
            ),
          width: mediaQuery.width,
          height: mediaQuery.height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
