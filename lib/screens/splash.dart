import 'dart:async';
import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/screens/splash_loading_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoadingScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Image(image: AssetImage('assets/images/Frame.png')),
        ));
  }
}
